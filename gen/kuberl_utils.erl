-module(kuberl_utils).

-export([request/7,
         select_header_content_type/1,
         optional_params/2]).

-type response_info() :: #{status  := integer(),
                           headers := list()}.
-export_type([response_info/0]).

request(_Ctx, Method, Path, QS, Headers, Body, Opts) ->
    Url = hackney_url:make_url(application:get_env(kuberl, host, "localhost"), Path, QS),

    Body1 = case lists:keyfind(<<"Content-Type">>, 1, Headers) of
                {_, <<"application/json", _/binary>>} ->
                    jsx:encode(Body);
                _ ->
                    Body
            end,

    case hackney:request(Method, Url, Headers, Body1, Opts) of
        {ok, ClientRef} ->
            %% return value if Opts includes `async`
            {ok, ClientRef};
        {ok, Status, RespHeaders, ClientRef} when Status >= 200,
                                                  Status =< 299 ->
            {ok, ResponseBody} = hackney:body(ClientRef),
            Resp = decode_response(RespHeaders, ResponseBody),
            {ok, Resp, #{status => Status,
                         headers => RespHeaders}};
        {ok, Status, RespHeaders, ClientRef} when Status >= 300 ->
            {ok, ResponseBody} = hackney:body(ClientRef),
            Resp = decode_response(RespHeaders, ResponseBody),
            {error, Resp, #{status => Status,
                            headers => RespHeaders}}
    end.

decode_response(Headers, Body) ->
    case lists:keyfind(<<"Content-Type">>, 1, Headers) of
        {_, <<"application/json", _/binary>>} ->
            jsx:decode(Body, [return_maps, {labels, atom}]);
        %% TODO: yml, protobuf, user defined function
        _ ->
            Body
    end.

optional_params([], _Params) -> [];
optional_params(Keys, Params) ->
    [{Key, maps:get(Key, Params)} || Key <- Keys, maps:is_key(Key, Params)].

select_header_content_type([]) ->
    [];
select_header_content_type(ContentTypes) ->
    case lists:member(<<"application/json">>, ContentTypes) orelse lists:member(<<"*/*">>, ContentTypes) of
        true ->
            [{<<"Content-Type">>, <<"application/json">>}];
        false ->
            [{<<"Content-Type">>, hd(ContentTypes)}]
    end.
