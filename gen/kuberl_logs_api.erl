-module(kuberl_logs_api).

-export([log_file_handler/2, log_file_handler/3,
         log_file_list_handler/1, log_file_list_handler/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% 
-spec log_file_handler(ctx:ctx(), binary()) -> {ok, [], kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
log_file_handler(Ctx, Logpath) ->
    log_file_handler(Ctx, Logpath, #{}).

-spec log_file_handler(ctx:ctx(), binary(), maps:map()) -> {ok, [], kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
log_file_handler(Ctx, Logpath, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/logs/", Logpath, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% 
-spec log_file_list_handler(ctx:ctx()) -> {ok, [], kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
log_file_list_handler(Ctx) ->
    log_file_list_handler(Ctx, #{}).

-spec log_file_list_handler(ctx:ctx(), maps:map()) -> {ok, [], kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
log_file_list_handler(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/logs/"],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).


