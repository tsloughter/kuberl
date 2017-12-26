-module(kuberl_settings_api).

-export([get_api_group/1, get_api_group/2]).

-define(BASE_URL, <<"">>).

%% @doc 
%% get information of a group
-spec get_api_group(ctx:ctx()) -> {ok, kuberl_v1_api_group:kuberl_v1_api_group(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_group(Ctx) ->
    get_api_group(Ctx, #{}).

-spec get_api_group(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_api_group:kuberl_v1_api_group(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_group(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/settings.k8s.io/"],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).


