-module(kuberl_rbac_authorization_v1_api).

-export([create_cluster_role/2, create_cluster_role/3,
         create_cluster_role_binding/2, create_cluster_role_binding/3,
         create_namespaced_role/3, create_namespaced_role/4,
         create_namespaced_role_binding/3, create_namespaced_role_binding/4,
         delete_cluster_role/3, delete_cluster_role/4,
         delete_cluster_role_binding/3, delete_cluster_role_binding/4,
         delete_collection_cluster_role/1, delete_collection_cluster_role/2,
         delete_collection_cluster_role_binding/1, delete_collection_cluster_role_binding/2,
         delete_collection_namespaced_role/2, delete_collection_namespaced_role/3,
         delete_collection_namespaced_role_binding/2, delete_collection_namespaced_role_binding/3,
         delete_namespaced_role/4, delete_namespaced_role/5,
         delete_namespaced_role_binding/4, delete_namespaced_role_binding/5,
         get_api_resources/1, get_api_resources/2,
         list_cluster_role/1, list_cluster_role/2,
         list_cluster_role_binding/1, list_cluster_role_binding/2,
         list_namespaced_role/2, list_namespaced_role/3,
         list_namespaced_role_binding/2, list_namespaced_role_binding/3,
         list_role_binding_for_all_namespaces/1, list_role_binding_for_all_namespaces/2,
         list_role_for_all_namespaces/1, list_role_for_all_namespaces/2,
         patch_cluster_role/3, patch_cluster_role/4,
         patch_cluster_role_binding/3, patch_cluster_role_binding/4,
         patch_namespaced_role/4, patch_namespaced_role/5,
         patch_namespaced_role_binding/4, patch_namespaced_role_binding/5,
         read_cluster_role/2, read_cluster_role/3,
         read_cluster_role_binding/2, read_cluster_role_binding/3,
         read_namespaced_role/3, read_namespaced_role/4,
         read_namespaced_role_binding/3, read_namespaced_role_binding/4,
         replace_cluster_role/3, replace_cluster_role/4,
         replace_cluster_role_binding/3, replace_cluster_role_binding/4,
         replace_namespaced_role/4, replace_namespaced_role/5,
         replace_namespaced_role_binding/4, replace_namespaced_role_binding/5]).

-define(BASE_URL, "").

%% @doc 
%% create a ClusterRole
-spec create_cluster_role(ctx:ctx(), kuberl_v1_cluster_role:kuberl_v1_cluster_role()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_cluster_role(Ctx, Body) ->
    create_cluster_role(Ctx, Body, #{}).

-spec create_cluster_role(ctx:ctx(), kuberl_v1_cluster_role:kuberl_v1_cluster_role(), maps:map()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_cluster_role(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterroles"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% create a ClusterRoleBinding
-spec create_cluster_role_binding(ctx:ctx(), kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_cluster_role_binding(Ctx, Body) ->
    create_cluster_role_binding(Ctx, Body, #{}).

-spec create_cluster_role_binding(ctx:ctx(), kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), maps:map()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_cluster_role_binding(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterrolebindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% create a Role
-spec create_namespaced_role(ctx:ctx(), binary(), kuberl_v1_role:kuberl_v1_role()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_role(Ctx, Namespace, Body) ->
    create_namespaced_role(Ctx, Namespace, Body, #{}).

-spec create_namespaced_role(ctx:ctx(), binary(), kuberl_v1_role:kuberl_v1_role(), maps:map()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_role(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/roles"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% create a RoleBinding
-spec create_namespaced_role_binding(ctx:ctx(), binary(), kuberl_v1_role_binding:kuberl_v1_role_binding()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_role_binding(Ctx, Namespace, Body) ->
    create_namespaced_role_binding(Ctx, Namespace, Body, #{}).

-spec create_namespaced_role_binding(ctx:ctx(), binary(), kuberl_v1_role_binding:kuberl_v1_role_binding(), maps:map()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_role_binding(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/rolebindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete a ClusterRole
-spec delete_cluster_role(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_cluster_role(Ctx, Name, Body) ->
    delete_cluster_role(Ctx, Name, Body, #{}).

-spec delete_cluster_role(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_cluster_role(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterroles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete a ClusterRoleBinding
-spec delete_cluster_role_binding(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_cluster_role_binding(Ctx, Name, Body) ->
    delete_cluster_role_binding(Ctx, Name, Body, #{}).

-spec delete_cluster_role_binding(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_cluster_role_binding(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of ClusterRole
-spec delete_collection_cluster_role(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_cluster_role(Ctx) ->
    delete_collection_cluster_role(Ctx, #{}).

-spec delete_collection_cluster_role(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_cluster_role(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterroles"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of ClusterRoleBinding
-spec delete_collection_cluster_role_binding(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_cluster_role_binding(Ctx) ->
    delete_collection_cluster_role_binding(Ctx, #{}).

-spec delete_collection_cluster_role_binding(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_cluster_role_binding(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterrolebindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of Role
-spec delete_collection_namespaced_role(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_role(Ctx, Namespace) ->
    delete_collection_namespaced_role(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_role(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_role(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/roles"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of RoleBinding
-spec delete_collection_namespaced_role_binding(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_role_binding(Ctx, Namespace) ->
    delete_collection_namespaced_role_binding(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_role_binding(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_role_binding(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/rolebindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete a Role
-spec delete_namespaced_role(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_role(Ctx, Name, Namespace, Body) ->
    delete_namespaced_role(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_role(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_role(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/roles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete a RoleBinding
-spec delete_namespaced_role_binding(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_role_binding(Ctx, Name, Namespace, Body) ->
    delete_namespaced_role_binding(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_role_binding(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_role_binding(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/rolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% get available resources
-spec get_api_resources(ctx:ctx()) -> {ok, kuberl_v1_api_resource_list:kuberl_v1_api_resource_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_resources(Ctx) ->
    get_api_resources(Ctx, #{}).

-spec get_api_resources(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_api_resource_list:kuberl_v1_api_resource_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_resources(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ClusterRole
-spec list_cluster_role(ctx:ctx()) -> {ok, kuberl_v1_cluster_role_list:kuberl_v1_cluster_role_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_cluster_role(Ctx) ->
    list_cluster_role(Ctx, #{}).

-spec list_cluster_role(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_cluster_role_list:kuberl_v1_cluster_role_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_cluster_role(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterroles"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ClusterRoleBinding
-spec list_cluster_role_binding(ctx:ctx()) -> {ok, kuberl_v1_cluster_role_binding_list:kuberl_v1_cluster_role_binding_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_cluster_role_binding(Ctx) ->
    list_cluster_role_binding(Ctx, #{}).

-spec list_cluster_role_binding(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_cluster_role_binding_list:kuberl_v1_cluster_role_binding_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_cluster_role_binding(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterrolebindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Role
-spec list_namespaced_role(ctx:ctx(), binary()) -> {ok, kuberl_v1_role_list:kuberl_v1_role_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_role(Ctx, Namespace) ->
    list_namespaced_role(Ctx, Namespace, #{}).

-spec list_namespaced_role(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_role_list:kuberl_v1_role_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_role(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/roles"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind RoleBinding
-spec list_namespaced_role_binding(ctx:ctx(), binary()) -> {ok, kuberl_v1_role_binding_list:kuberl_v1_role_binding_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_role_binding(Ctx, Namespace) ->
    list_namespaced_role_binding(Ctx, Namespace, #{}).

-spec list_namespaced_role_binding(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_role_binding_list:kuberl_v1_role_binding_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_role_binding(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/rolebindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind RoleBinding
-spec list_role_binding_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_role_binding_list:kuberl_v1_role_binding_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_role_binding_for_all_namespaces(Ctx) ->
    list_role_binding_for_all_namespaces(Ctx, #{}).

-spec list_role_binding_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_role_binding_list:kuberl_v1_role_binding_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_role_binding_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/rolebindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Role
-spec list_role_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_role_list:kuberl_v1_role_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_role_for_all_namespaces(Ctx) ->
    list_role_for_all_namespaces(Ctx, #{}).

-spec list_role_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_role_list:kuberl_v1_role_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_role_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/roles"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified ClusterRole
-spec patch_cluster_role(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_cluster_role(Ctx, Name, Body) ->
    patch_cluster_role(Ctx, Name, Body, #{}).

-spec patch_cluster_role(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_cluster_role(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterroles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified ClusterRoleBinding
-spec patch_cluster_role_binding(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_cluster_role_binding(Ctx, Name, Body) ->
    patch_cluster_role_binding(Ctx, Name, Body, #{}).

-spec patch_cluster_role_binding(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_cluster_role_binding(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified Role
-spec patch_namespaced_role(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_role(Ctx, Name, Namespace, Body) ->
    patch_namespaced_role(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_role(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_role(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/roles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified RoleBinding
-spec patch_namespaced_role_binding(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_role_binding(Ctx, Name, Namespace, Body) ->
    patch_namespaced_role_binding(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_role_binding(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_role_binding(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/rolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified ClusterRole
-spec read_cluster_role(ctx:ctx(), binary()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_cluster_role(Ctx, Name) ->
    read_cluster_role(Ctx, Name, #{}).

-spec read_cluster_role(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_cluster_role(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterroles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified ClusterRoleBinding
-spec read_cluster_role_binding(ctx:ctx(), binary()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_cluster_role_binding(Ctx, Name) ->
    read_cluster_role_binding(Ctx, Name, #{}).

-spec read_cluster_role_binding(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_cluster_role_binding(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified Role
-spec read_namespaced_role(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_role(Ctx, Name, Namespace) ->
    read_namespaced_role(Ctx, Name, Namespace, #{}).

-spec read_namespaced_role(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_role(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/roles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified RoleBinding
-spec read_namespaced_role_binding(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_role_binding(Ctx, Name, Namespace) ->
    read_namespaced_role_binding(Ctx, Name, Namespace, #{}).

-spec read_namespaced_role_binding(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_role_binding(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/rolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified ClusterRole
-spec replace_cluster_role(ctx:ctx(), binary(), kuberl_v1_cluster_role:kuberl_v1_cluster_role()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_cluster_role(Ctx, Name, Body) ->
    replace_cluster_role(Ctx, Name, Body, #{}).

-spec replace_cluster_role(ctx:ctx(), binary(), kuberl_v1_cluster_role:kuberl_v1_cluster_role(), maps:map()) -> {ok, kuberl_v1_cluster_role:kuberl_v1_cluster_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_cluster_role(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterroles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified ClusterRoleBinding
-spec replace_cluster_role_binding(ctx:ctx(), binary(), kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_cluster_role_binding(Ctx, Name, Body) ->
    replace_cluster_role_binding(Ctx, Name, Body, #{}).

-spec replace_cluster_role_binding(ctx:ctx(), binary(), kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), maps:map()) -> {ok, kuberl_v1_cluster_role_binding:kuberl_v1_cluster_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_cluster_role_binding(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified Role
-spec replace_namespaced_role(ctx:ctx(), binary(), binary(), kuberl_v1_role:kuberl_v1_role()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_role(Ctx, Name, Namespace, Body) ->
    replace_namespaced_role(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_role(ctx:ctx(), binary(), binary(), kuberl_v1_role:kuberl_v1_role(), maps:map()) -> {ok, kuberl_v1_role:kuberl_v1_role(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_role(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/roles/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified RoleBinding
-spec replace_namespaced_role_binding(ctx:ctx(), binary(), binary(), kuberl_v1_role_binding:kuberl_v1_role_binding()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_role_binding(Ctx, Name, Namespace, Body) ->
    replace_namespaced_role_binding(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_role_binding(ctx:ctx(), binary(), binary(), kuberl_v1_role_binding:kuberl_v1_role_binding(), maps:map()) -> {ok, kuberl_v1_role_binding:kuberl_v1_role_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_role_binding(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/rbac.authorization.k8s.io/v1/namespaces/", Namespace, "/rolebindings/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


