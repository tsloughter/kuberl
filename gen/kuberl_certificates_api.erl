-module(kuberl_certificates_api).

-export([get_api_group/1, get_api_group/2]).

-define(BASE_URL, "").

%% @doc 
%% get information of a group
-spec get_api_group(ctx:ctx()) -> {ok, kuberl_v1_api_group:kuberl_v1_api_group(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_group(Ctx) ->
    get_api_group(Ctx, #{}).

-spec get_api_group(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_api_group:kuberl_v1_api_group(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_group(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/certificates.k8s.io/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


