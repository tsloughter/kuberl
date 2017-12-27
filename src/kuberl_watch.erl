-module(kuberl_watch).

-export([start_link/6]).

-export([init/1,
         closed/3,
         open/3,
         callback_mode/0,
         terminate/3]).

-type event_type() :: added | modified | deleted | error.
-type object() :: maps:map().
-type cb_state() :: term().

-export_type([event_type/0,
              object/0]).

-callback init(term()) -> {ok, cb_state()} | ignore | {stop, term()}.

-callback handle_event(event_type(), object(), cb_state()) -> {ok, cb_state()}.

-callback terminate(normal | shutdown | {shutdown, term()} | term(), term()) -> ok.

-record(data, {api_call :: {module(), atom()},
               required_args :: list(),
               optional_args :: maps:map(),
               decode_fun :: undefined | fun((binary()) -> {incomplete, fun()} | {with_tail, term(), binary()}),
               client_ref :: undefined | hackney:client_ref(),
               cb_module :: module(),
               cb_data :: cb_state(),
               last_version :: undefined | integer(),
               backoff :: undefined | unicode:chardata()}).

-define(RECONNECT_TIMEOUT, timer:seconds(1)).

start_link(CbModule, ApiModule, ApiMethod, RequiredArgs, Optional, CbArgs) ->
    gen_statem:start_link(?MODULE, [CbModule, ApiModule, ApiMethod, RequiredArgs, Optional, CbArgs], []).

init([CbModule, ApiModule, ApiMethod, RequiredArgs, Optional, CbArgs]) ->
    case CbModule:init(CbArgs) of
        {ok, CbData} ->
            OptionalParams = maps:get(params, Optional, #{}),
            LastVersion = maps:get(resourceVersion, OptionalParams, 0),
            HackneyOpts = maps:get(hackney_opts, Optional, []),
            %% make sure `watch` param is set and hackney has `async` option
            Optional1 = Optional#{params => OptionalParams#{watch => true,
                                                            resourceVersion => LastVersion},
                                  hackney_opts => [async | HackneyOpts]},
            {ok, closed, #data{api_call={ApiModule, ApiMethod},
                               required_args=RequiredArgs,
                               optional_args=Optional1,
                               decode_fun=undefined,
                               cb_module=CbModule,
                               cb_data=CbData,
                               backoff=backoff:init(timer:seconds(1), timer:seconds(10)),
                               last_version=LastVersion}, {next_event, internal, connect}};
        ignore ->
            ignore;
        {stop, Reason} ->
            {stop, Reason}
    end.

callback_mode() ->
    state_functions.

closed(state_timeout, connect, Data) ->
    try_request(Data);
closed(internal, connect, Data) ->
    try_request(Data).

try_request(Data=#data{api_call={ApiModule, ApiMethod},
                       required_args=RequiredArgs,
                       optional_args=Optional,
                       last_version=LastVersion,
                       backoff=Backoff}) ->
    OptionalParams = maps:get(params, Optional, #{}),
    Optional1 = Optional#{params => OptionalParams#{resourceVersion => LastVersion}},
    ApplyArgs = RequiredArgs++[Optional1],
    try erlang:apply(ApiModule, ApiMethod, ApplyArgs) of
        {ok, ClientRef} ->
            {_, B1} = backoff:succeed(Backoff),
            {next_state, open, Data#data{client_ref=ClientRef,
                                         backoff=B1}}
    catch
        _:_ ->
            T = backoff:get(Backoff),
            {_, B1} = backoff:fail(Backoff),
            {keep_state, Data#data{client_ref=undefined,
                                   backoff=B1}, [{state_timeout, T, connect}]}
    end.

open(Type, Event, Data) ->
    handle_event(Type, Event, Data).

handle_event(info, {hackney_response, ClientRef, {status, _StatusInt, _Reason}}, #data{client_ref=ClientRef}) ->
    keep_state_and_data;
handle_event(info, {hackney_response, ClientRef, {headers, _Headers}}, #data{client_ref=ClientRef}) ->
    keep_state_and_data;
handle_event(info, {hackney_response, ClientRef, Bin}, Data=#data{cb_module=CbModule,
                                                                  cb_data=CbData,
                                                                  decode_fun=DecodeFun,
                                                                  client_ref=ClientRef,
                                                                  last_version=LastVersion}) when is_binary(Bin) ->
    {ok, NewDecodeFun, NewCbData, NewLastVersion} = handle_data(Bin, DecodeFun, CbModule, CbData, LastVersion),
    {keep_state, Data#data{decode_fun=NewDecodeFun,
                           cb_data=NewCbData,
                           last_version=NewLastVersion}};
handle_event(info, {hackney_response, ClientRef, {error, {closed, timeout}}}, Data=#data{client_ref=ClientRef}) ->
    {next_state, closed, Data#data{client_ref=undefined,
                                   decode_fun=undefined}, [{state_timeout, ?RECONNECT_TIMEOUT, connect}]};
handle_event(info, {hackney_response, ClientRef, done}, Data=#data{client_ref=ClientRef}) ->
    %% Our work is never done. Reconnect like we would on a {closed, timeout}
    {next_state, closed, Data#data{client_ref=undefined,
                                   decode_fun=undefined}, [{state_timeout, ?RECONNECT_TIMEOUT, connect}]}.

terminate(Reason, _State, #data{cb_module=CbModule,
                                cb_data=CbData,
                                client_ref=undefined}) ->
    CbModule:terminate(Reason, CbData),
    ok;
terminate(Reason, _State, #data{cb_module=CbModule,
                                cb_data=CbData,
                                client_ref=ClientRef}) ->
    hackney:cancel_request(ClientRef),
    CbModule:terminate(Reason, CbData),
    ok.

%%

-define(JSX_FUN, fun(X) -> jsx:decode(X, [stream, return_tail, return_maps, {labels, atom}]) end).

handle_data(Data, undefined, CbModule, CbData, Version) ->
    handle_data(Data, ?JSX_FUN, CbModule, CbData, Version);
handle_data(Data, DecodeFun, CbModule, CbData, Version) ->
    case DecodeFun(Data) of
        {incomplete, F} ->
            {ok, F, CbData, Version};
        {with_tail, Term, <<>>} ->
            {{ok, CbData1}, NewVersion} = handle(CbModule, CbData, Term, Version),
            {ok, undefined, CbData1, NewVersion};
        {with_tail, Term, Rest} ->
            {{ok, CbData1}, NewVersion} = handle(CbModule, CbData, Term, Version),
            handle_data(Rest, ?JSX_FUN, CbModule, CbData1, NewVersion)
    end.

handle(CbModule, CbData, #{type := <<"ERROR">>,
                           object := Object}, LastVersion) ->
    {CbModule:handle_event(error, Object, CbData), LastVersion};
handle(CbModule, CbData, #{type := Type,
                           object := Object=#{metadata := #{resourceVersion := LastVersion}}}, _) ->
    {CbModule:handle_event(type_to_atom(Type), Object, CbData), LastVersion}.

type_to_atom(<<"ADDED">>) -> added;
type_to_atom(<<"DELETED">>) -> deleted;
type_to_atom(<<"MODIFIED">>) -> modified;
type_to_atom(<<"ERROR">>) -> error.
