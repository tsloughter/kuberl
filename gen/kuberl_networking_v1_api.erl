-module(kuberl_networking_v1_api).

-export([create_namespaced_network_policy/3, create_namespaced_network_policy/4,
         delete_collection_namespaced_network_policy/2, delete_collection_namespaced_network_policy/3,
         delete_namespaced_network_policy/4, delete_namespaced_network_policy/5,
         get_api_resources/1, get_api_resources/2,
         list_namespaced_network_policy/2, list_namespaced_network_policy/3,
         list_network_policy_for_all_namespaces/1, list_network_policy_for_all_namespaces/2,
         patch_namespaced_network_policy/4, patch_namespaced_network_policy/5,
         read_namespaced_network_policy/3, read_namespaced_network_policy/4,
         replace_namespaced_network_policy/4, replace_namespaced_network_policy/5]).

-define(BASE_URL, "").

%% @doc 
%% create a NetworkPolicy
-spec create_namespaced_network_policy(ctx:ctx(), binary(), kuberl_v1_network_policy:kuberl_v1_network_policy()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_network_policy(Ctx, Namespace, Body) ->
    create_namespaced_network_policy(Ctx, Namespace, Body, #{}).

-spec create_namespaced_network_policy(ctx:ctx(), binary(), kuberl_v1_network_policy:kuberl_v1_network_policy(), maps:map()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_network_policy(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/networking.k8s.io/v1/namespaces/", Namespace, "/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of NetworkPolicy
-spec delete_collection_namespaced_network_policy(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_network_policy(Ctx, Namespace) ->
    delete_collection_namespaced_network_policy(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_network_policy(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_network_policy(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/networking.k8s.io/v1/namespaces/", Namespace, "/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a NetworkPolicy
-spec delete_namespaced_network_policy(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_network_policy(Ctx, Name, Namespace, Body) ->
    delete_namespaced_network_policy(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_network_policy(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_network_policy(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/networking.k8s.io/v1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% get available resources
-spec get_api_resources(ctx:ctx()) -> {ok, kuberl_v1_api_resource_list:kuberl_v1_api_resource_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_resources(Ctx) ->
    get_api_resources(Ctx, #{}).

-spec get_api_resources(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_api_resource_list:kuberl_v1_api_resource_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_resources(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/networking.k8s.io/v1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind NetworkPolicy
-spec list_namespaced_network_policy(ctx:ctx(), binary()) -> {ok, kuberl_v1_network_policy_list:kuberl_v1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_network_policy(Ctx, Namespace) ->
    list_namespaced_network_policy(Ctx, Namespace, #{}).

-spec list_namespaced_network_policy(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_network_policy_list:kuberl_v1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_network_policy(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/networking.k8s.io/v1/namespaces/", Namespace, "/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind NetworkPolicy
-spec list_network_policy_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_network_policy_list:kuberl_v1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_network_policy_for_all_namespaces(Ctx) ->
    list_network_policy_for_all_namespaces(Ctx, #{}).

-spec list_network_policy_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_network_policy_list:kuberl_v1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_network_policy_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/networking.k8s.io/v1/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified NetworkPolicy
-spec patch_namespaced_network_policy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_network_policy(Ctx, Name, Namespace, Body) ->
    patch_namespaced_network_policy(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_network_policy(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_network_policy(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/networking.k8s.io/v1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified NetworkPolicy
-spec read_namespaced_network_policy(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_network_policy(Ctx, Name, Namespace) ->
    read_namespaced_network_policy(Ctx, Name, Namespace, #{}).

-spec read_namespaced_network_policy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_network_policy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/networking.k8s.io/v1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified NetworkPolicy
-spec replace_namespaced_network_policy(ctx:ctx(), binary(), binary(), kuberl_v1_network_policy:kuberl_v1_network_policy()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_network_policy(Ctx, Name, Namespace, Body) ->
    replace_namespaced_network_policy(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_network_policy(ctx:ctx(), binary(), binary(), kuberl_v1_network_policy:kuberl_v1_network_policy(), maps:map()) -> {ok, kuberl_v1_network_policy:kuberl_v1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_network_policy(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/networking.k8s.io/v1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


