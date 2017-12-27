-module(kuberl_core_v1_api).

-export([connect_delete_namespaced_pod_proxy/3, connect_delete_namespaced_pod_proxy/4,
         connect_delete_namespaced_pod_proxy_with_path/4, connect_delete_namespaced_pod_proxy_with_path/5,
         connect_delete_namespaced_service_proxy/3, connect_delete_namespaced_service_proxy/4,
         connect_delete_namespaced_service_proxy_with_path/4, connect_delete_namespaced_service_proxy_with_path/5,
         connect_delete_node_proxy/2, connect_delete_node_proxy/3,
         connect_delete_node_proxy_with_path/3, connect_delete_node_proxy_with_path/4,
         connect_get_namespaced_pod_attach/3, connect_get_namespaced_pod_attach/4,
         connect_get_namespaced_pod_exec/3, connect_get_namespaced_pod_exec/4,
         connect_get_namespaced_pod_portforward/3, connect_get_namespaced_pod_portforward/4,
         connect_get_namespaced_pod_proxy/3, connect_get_namespaced_pod_proxy/4,
         connect_get_namespaced_pod_proxy_with_path/4, connect_get_namespaced_pod_proxy_with_path/5,
         connect_get_namespaced_service_proxy/3, connect_get_namespaced_service_proxy/4,
         connect_get_namespaced_service_proxy_with_path/4, connect_get_namespaced_service_proxy_with_path/5,
         connect_get_node_proxy/2, connect_get_node_proxy/3,
         connect_get_node_proxy_with_path/3, connect_get_node_proxy_with_path/4,
         connect_head_namespaced_pod_proxy/3, connect_head_namespaced_pod_proxy/4,
         connect_head_namespaced_pod_proxy_with_path/4, connect_head_namespaced_pod_proxy_with_path/5,
         connect_head_namespaced_service_proxy/3, connect_head_namespaced_service_proxy/4,
         connect_head_namespaced_service_proxy_with_path/4, connect_head_namespaced_service_proxy_with_path/5,
         connect_head_node_proxy/2, connect_head_node_proxy/3,
         connect_head_node_proxy_with_path/3, connect_head_node_proxy_with_path/4,
         connect_options_namespaced_pod_proxy/3, connect_options_namespaced_pod_proxy/4,
         connect_options_namespaced_pod_proxy_with_path/4, connect_options_namespaced_pod_proxy_with_path/5,
         connect_options_namespaced_service_proxy/3, connect_options_namespaced_service_proxy/4,
         connect_options_namespaced_service_proxy_with_path/4, connect_options_namespaced_service_proxy_with_path/5,
         connect_options_node_proxy/2, connect_options_node_proxy/3,
         connect_options_node_proxy_with_path/3, connect_options_node_proxy_with_path/4,
         connect_patch_namespaced_pod_proxy/3, connect_patch_namespaced_pod_proxy/4,
         connect_patch_namespaced_pod_proxy_with_path/4, connect_patch_namespaced_pod_proxy_with_path/5,
         connect_patch_namespaced_service_proxy/3, connect_patch_namespaced_service_proxy/4,
         connect_patch_namespaced_service_proxy_with_path/4, connect_patch_namespaced_service_proxy_with_path/5,
         connect_patch_node_proxy/2, connect_patch_node_proxy/3,
         connect_patch_node_proxy_with_path/3, connect_patch_node_proxy_with_path/4,
         connect_post_namespaced_pod_attach/3, connect_post_namespaced_pod_attach/4,
         connect_post_namespaced_pod_exec/3, connect_post_namespaced_pod_exec/4,
         connect_post_namespaced_pod_portforward/3, connect_post_namespaced_pod_portforward/4,
         connect_post_namespaced_pod_proxy/3, connect_post_namespaced_pod_proxy/4,
         connect_post_namespaced_pod_proxy_with_path/4, connect_post_namespaced_pod_proxy_with_path/5,
         connect_post_namespaced_service_proxy/3, connect_post_namespaced_service_proxy/4,
         connect_post_namespaced_service_proxy_with_path/4, connect_post_namespaced_service_proxy_with_path/5,
         connect_post_node_proxy/2, connect_post_node_proxy/3,
         connect_post_node_proxy_with_path/3, connect_post_node_proxy_with_path/4,
         connect_put_namespaced_pod_proxy/3, connect_put_namespaced_pod_proxy/4,
         connect_put_namespaced_pod_proxy_with_path/4, connect_put_namespaced_pod_proxy_with_path/5,
         connect_put_namespaced_service_proxy/3, connect_put_namespaced_service_proxy/4,
         connect_put_namespaced_service_proxy_with_path/4, connect_put_namespaced_service_proxy_with_path/5,
         connect_put_node_proxy/2, connect_put_node_proxy/3,
         connect_put_node_proxy_with_path/3, connect_put_node_proxy_with_path/4,
         create_namespace/2, create_namespace/3,
         create_namespaced_binding/3, create_namespaced_binding/4,
         create_namespaced_config_map/3, create_namespaced_config_map/4,
         create_namespaced_endpoints/3, create_namespaced_endpoints/4,
         create_namespaced_event/3, create_namespaced_event/4,
         create_namespaced_limit_range/3, create_namespaced_limit_range/4,
         create_namespaced_persistent_volume_claim/3, create_namespaced_persistent_volume_claim/4,
         create_namespaced_pod/3, create_namespaced_pod/4,
         create_namespaced_pod_binding/4, create_namespaced_pod_binding/5,
         create_namespaced_pod_eviction/4, create_namespaced_pod_eviction/5,
         create_namespaced_pod_template/3, create_namespaced_pod_template/4,
         create_namespaced_replication_controller/3, create_namespaced_replication_controller/4,
         create_namespaced_resource_quota/3, create_namespaced_resource_quota/4,
         create_namespaced_secret/3, create_namespaced_secret/4,
         create_namespaced_service/3, create_namespaced_service/4,
         create_namespaced_service_account/3, create_namespaced_service_account/4,
         create_node/2, create_node/3,
         create_persistent_volume/2, create_persistent_volume/3,
         delete_collection_namespaced_config_map/2, delete_collection_namespaced_config_map/3,
         delete_collection_namespaced_endpoints/2, delete_collection_namespaced_endpoints/3,
         delete_collection_namespaced_event/2, delete_collection_namespaced_event/3,
         delete_collection_namespaced_limit_range/2, delete_collection_namespaced_limit_range/3,
         delete_collection_namespaced_persistent_volume_claim/2, delete_collection_namespaced_persistent_volume_claim/3,
         delete_collection_namespaced_pod/2, delete_collection_namespaced_pod/3,
         delete_collection_namespaced_pod_template/2, delete_collection_namespaced_pod_template/3,
         delete_collection_namespaced_replication_controller/2, delete_collection_namespaced_replication_controller/3,
         delete_collection_namespaced_resource_quota/2, delete_collection_namespaced_resource_quota/3,
         delete_collection_namespaced_secret/2, delete_collection_namespaced_secret/3,
         delete_collection_namespaced_service_account/2, delete_collection_namespaced_service_account/3,
         delete_collection_node/1, delete_collection_node/2,
         delete_collection_persistent_volume/1, delete_collection_persistent_volume/2,
         delete_namespace/3, delete_namespace/4,
         delete_namespaced_config_map/4, delete_namespaced_config_map/5,
         delete_namespaced_endpoints/4, delete_namespaced_endpoints/5,
         delete_namespaced_event/4, delete_namespaced_event/5,
         delete_namespaced_limit_range/4, delete_namespaced_limit_range/5,
         delete_namespaced_persistent_volume_claim/4, delete_namespaced_persistent_volume_claim/5,
         delete_namespaced_pod/4, delete_namespaced_pod/5,
         delete_namespaced_pod_template/4, delete_namespaced_pod_template/5,
         delete_namespaced_replication_controller/4, delete_namespaced_replication_controller/5,
         delete_namespaced_resource_quota/4, delete_namespaced_resource_quota/5,
         delete_namespaced_secret/4, delete_namespaced_secret/5,
         delete_namespaced_service/3, delete_namespaced_service/4,
         delete_namespaced_service_account/4, delete_namespaced_service_account/5,
         delete_node/3, delete_node/4,
         delete_persistent_volume/3, delete_persistent_volume/4,
         get_api_resources/1, get_api_resources/2,
         list_component_status/1, list_component_status/2,
         list_config_map_for_all_namespaces/1, list_config_map_for_all_namespaces/2,
         list_endpoints_for_all_namespaces/1, list_endpoints_for_all_namespaces/2,
         list_event_for_all_namespaces/1, list_event_for_all_namespaces/2,
         list_limit_range_for_all_namespaces/1, list_limit_range_for_all_namespaces/2,
         list_namespace/1, list_namespace/2,
         list_namespaced_config_map/2, list_namespaced_config_map/3,
         list_namespaced_endpoints/2, list_namespaced_endpoints/3,
         list_namespaced_event/2, list_namespaced_event/3,
         list_namespaced_limit_range/2, list_namespaced_limit_range/3,
         list_namespaced_persistent_volume_claim/2, list_namespaced_persistent_volume_claim/3,
         list_namespaced_pod/2, list_namespaced_pod/3,
         list_namespaced_pod_template/2, list_namespaced_pod_template/3,
         list_namespaced_replication_controller/2, list_namespaced_replication_controller/3,
         list_namespaced_resource_quota/2, list_namespaced_resource_quota/3,
         list_namespaced_secret/2, list_namespaced_secret/3,
         list_namespaced_service/2, list_namespaced_service/3,
         list_namespaced_service_account/2, list_namespaced_service_account/3,
         list_node/1, list_node/2,
         list_persistent_volume/1, list_persistent_volume/2,
         list_persistent_volume_claim_for_all_namespaces/1, list_persistent_volume_claim_for_all_namespaces/2,
         list_pod_for_all_namespaces/1, list_pod_for_all_namespaces/2,
         list_pod_template_for_all_namespaces/1, list_pod_template_for_all_namespaces/2,
         list_replication_controller_for_all_namespaces/1, list_replication_controller_for_all_namespaces/2,
         list_resource_quota_for_all_namespaces/1, list_resource_quota_for_all_namespaces/2,
         list_secret_for_all_namespaces/1, list_secret_for_all_namespaces/2,
         list_service_account_for_all_namespaces/1, list_service_account_for_all_namespaces/2,
         list_service_for_all_namespaces/1, list_service_for_all_namespaces/2,
         patch_namespace/3, patch_namespace/4,
         patch_namespace_status/3, patch_namespace_status/4,
         patch_namespaced_config_map/4, patch_namespaced_config_map/5,
         patch_namespaced_endpoints/4, patch_namespaced_endpoints/5,
         patch_namespaced_event/4, patch_namespaced_event/5,
         patch_namespaced_limit_range/4, patch_namespaced_limit_range/5,
         patch_namespaced_persistent_volume_claim/4, patch_namespaced_persistent_volume_claim/5,
         patch_namespaced_persistent_volume_claim_status/4, patch_namespaced_persistent_volume_claim_status/5,
         patch_namespaced_pod/4, patch_namespaced_pod/5,
         patch_namespaced_pod_status/4, patch_namespaced_pod_status/5,
         patch_namespaced_pod_template/4, patch_namespaced_pod_template/5,
         patch_namespaced_replication_controller/4, patch_namespaced_replication_controller/5,
         patch_namespaced_replication_controller_scale/4, patch_namespaced_replication_controller_scale/5,
         patch_namespaced_replication_controller_status/4, patch_namespaced_replication_controller_status/5,
         patch_namespaced_resource_quota/4, patch_namespaced_resource_quota/5,
         patch_namespaced_resource_quota_status/4, patch_namespaced_resource_quota_status/5,
         patch_namespaced_secret/4, patch_namespaced_secret/5,
         patch_namespaced_service/4, patch_namespaced_service/5,
         patch_namespaced_service_account/4, patch_namespaced_service_account/5,
         patch_namespaced_service_status/4, patch_namespaced_service_status/5,
         patch_node/3, patch_node/4,
         patch_node_status/3, patch_node_status/4,
         patch_persistent_volume/3, patch_persistent_volume/4,
         patch_persistent_volume_status/3, patch_persistent_volume_status/4,
         proxy_delete_namespaced_pod/3, proxy_delete_namespaced_pod/4,
         proxy_delete_namespaced_pod_with_path/4, proxy_delete_namespaced_pod_with_path/5,
         proxy_delete_namespaced_service/3, proxy_delete_namespaced_service/4,
         proxy_delete_namespaced_service_with_path/4, proxy_delete_namespaced_service_with_path/5,
         proxy_delete_node/2, proxy_delete_node/3,
         proxy_delete_node_with_path/3, proxy_delete_node_with_path/4,
         proxy_get_namespaced_pod/3, proxy_get_namespaced_pod/4,
         proxy_get_namespaced_pod_with_path/4, proxy_get_namespaced_pod_with_path/5,
         proxy_get_namespaced_service/3, proxy_get_namespaced_service/4,
         proxy_get_namespaced_service_with_path/4, proxy_get_namespaced_service_with_path/5,
         proxy_get_node/2, proxy_get_node/3,
         proxy_get_node_with_path/3, proxy_get_node_with_path/4,
         proxy_head_namespaced_pod/3, proxy_head_namespaced_pod/4,
         proxy_head_namespaced_pod_with_path/4, proxy_head_namespaced_pod_with_path/5,
         proxy_head_namespaced_service/3, proxy_head_namespaced_service/4,
         proxy_head_namespaced_service_with_path/4, proxy_head_namespaced_service_with_path/5,
         proxy_head_node/2, proxy_head_node/3,
         proxy_head_node_with_path/3, proxy_head_node_with_path/4,
         proxy_options_namespaced_pod/3, proxy_options_namespaced_pod/4,
         proxy_options_namespaced_pod_with_path/4, proxy_options_namespaced_pod_with_path/5,
         proxy_options_namespaced_service/3, proxy_options_namespaced_service/4,
         proxy_options_namespaced_service_with_path/4, proxy_options_namespaced_service_with_path/5,
         proxy_options_node/2, proxy_options_node/3,
         proxy_options_node_with_path/3, proxy_options_node_with_path/4,
         proxy_patch_namespaced_pod/3, proxy_patch_namespaced_pod/4,
         proxy_patch_namespaced_pod_with_path/4, proxy_patch_namespaced_pod_with_path/5,
         proxy_patch_namespaced_service/3, proxy_patch_namespaced_service/4,
         proxy_patch_namespaced_service_with_path/4, proxy_patch_namespaced_service_with_path/5,
         proxy_patch_node/2, proxy_patch_node/3,
         proxy_patch_node_with_path/3, proxy_patch_node_with_path/4,
         proxy_post_namespaced_pod/3, proxy_post_namespaced_pod/4,
         proxy_post_namespaced_pod_with_path/4, proxy_post_namespaced_pod_with_path/5,
         proxy_post_namespaced_service/3, proxy_post_namespaced_service/4,
         proxy_post_namespaced_service_with_path/4, proxy_post_namespaced_service_with_path/5,
         proxy_post_node/2, proxy_post_node/3,
         proxy_post_node_with_path/3, proxy_post_node_with_path/4,
         proxy_put_namespaced_pod/3, proxy_put_namespaced_pod/4,
         proxy_put_namespaced_pod_with_path/4, proxy_put_namespaced_pod_with_path/5,
         proxy_put_namespaced_service/3, proxy_put_namespaced_service/4,
         proxy_put_namespaced_service_with_path/4, proxy_put_namespaced_service_with_path/5,
         proxy_put_node/2, proxy_put_node/3,
         proxy_put_node_with_path/3, proxy_put_node_with_path/4,
         read_component_status/2, read_component_status/3,
         read_namespace/2, read_namespace/3,
         read_namespace_status/2, read_namespace_status/3,
         read_namespaced_config_map/3, read_namespaced_config_map/4,
         read_namespaced_endpoints/3, read_namespaced_endpoints/4,
         read_namespaced_event/3, read_namespaced_event/4,
         read_namespaced_limit_range/3, read_namespaced_limit_range/4,
         read_namespaced_persistent_volume_claim/3, read_namespaced_persistent_volume_claim/4,
         read_namespaced_persistent_volume_claim_status/3, read_namespaced_persistent_volume_claim_status/4,
         read_namespaced_pod/3, read_namespaced_pod/4,
         read_namespaced_pod_log/3, read_namespaced_pod_log/4,
         read_namespaced_pod_status/3, read_namespaced_pod_status/4,
         read_namespaced_pod_template/3, read_namespaced_pod_template/4,
         read_namespaced_replication_controller/3, read_namespaced_replication_controller/4,
         read_namespaced_replication_controller_scale/3, read_namespaced_replication_controller_scale/4,
         read_namespaced_replication_controller_status/3, read_namespaced_replication_controller_status/4,
         read_namespaced_resource_quota/3, read_namespaced_resource_quota/4,
         read_namespaced_resource_quota_status/3, read_namespaced_resource_quota_status/4,
         read_namespaced_secret/3, read_namespaced_secret/4,
         read_namespaced_service/3, read_namespaced_service/4,
         read_namespaced_service_account/3, read_namespaced_service_account/4,
         read_namespaced_service_status/3, read_namespaced_service_status/4,
         read_node/2, read_node/3,
         read_node_status/2, read_node_status/3,
         read_persistent_volume/2, read_persistent_volume/3,
         read_persistent_volume_status/2, read_persistent_volume_status/3,
         replace_namespace/3, replace_namespace/4,
         replace_namespace_finalize/3, replace_namespace_finalize/4,
         replace_namespace_status/3, replace_namespace_status/4,
         replace_namespaced_config_map/4, replace_namespaced_config_map/5,
         replace_namespaced_endpoints/4, replace_namespaced_endpoints/5,
         replace_namespaced_event/4, replace_namespaced_event/5,
         replace_namespaced_limit_range/4, replace_namespaced_limit_range/5,
         replace_namespaced_persistent_volume_claim/4, replace_namespaced_persistent_volume_claim/5,
         replace_namespaced_persistent_volume_claim_status/4, replace_namespaced_persistent_volume_claim_status/5,
         replace_namespaced_pod/4, replace_namespaced_pod/5,
         replace_namespaced_pod_status/4, replace_namespaced_pod_status/5,
         replace_namespaced_pod_template/4, replace_namespaced_pod_template/5,
         replace_namespaced_replication_controller/4, replace_namespaced_replication_controller/5,
         replace_namespaced_replication_controller_scale/4, replace_namespaced_replication_controller_scale/5,
         replace_namespaced_replication_controller_status/4, replace_namespaced_replication_controller_status/5,
         replace_namespaced_resource_quota/4, replace_namespaced_resource_quota/5,
         replace_namespaced_resource_quota_status/4, replace_namespaced_resource_quota_status/5,
         replace_namespaced_secret/4, replace_namespaced_secret/5,
         replace_namespaced_service/4, replace_namespaced_service/5,
         replace_namespaced_service_account/4, replace_namespaced_service_account/5,
         replace_namespaced_service_status/4, replace_namespaced_service_status/5,
         replace_node/3, replace_node/4,
         replace_node_status/3, replace_node_status/4,
         replace_persistent_volume/3, replace_persistent_volume/4,
         replace_persistent_volume_status/3, replace_persistent_volume_status/4]).

-define(BASE_URL, "").

%% @doc 
%% connect DELETE requests to proxy of Pod
-spec connect_delete_namespaced_pod_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_pod_proxy(Ctx, Name, Namespace) ->
    connect_delete_namespaced_pod_proxy(Ctx, Name, Namespace, #{}).

-spec connect_delete_namespaced_pod_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_pod_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect DELETE requests to proxy of Pod
-spec connect_delete_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_delete_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_delete_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect DELETE requests to proxy of Service
-spec connect_delete_namespaced_service_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_service_proxy(Ctx, Name, Namespace) ->
    connect_delete_namespaced_service_proxy(Ctx, Name, Namespace, #{}).

-spec connect_delete_namespaced_service_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_service_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect DELETE requests to proxy of Service
-spec connect_delete_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_delete_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_delete_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect DELETE requests to proxy of Node
-spec connect_delete_node_proxy(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_node_proxy(Ctx, Name) ->
    connect_delete_node_proxy(Ctx, Name, #{}).

-spec connect_delete_node_proxy(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_node_proxy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/nodes/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect DELETE requests to proxy of Node
-spec connect_delete_node_proxy_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_node_proxy_with_path(Ctx, Name, Path) ->
    connect_delete_node_proxy_with_path(Ctx, Name, Path, #{}).

-spec connect_delete_node_proxy_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_delete_node_proxy_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/nodes/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to attach of Pod
-spec connect_get_namespaced_pod_attach(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_attach(Ctx, Name, Namespace) ->
    connect_get_namespaced_pod_attach(Ctx, Name, Namespace, #{}).

-spec connect_get_namespaced_pod_attach(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_attach(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/attach"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['container', 'stderr', 'stdin', 'stdout', 'tty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to exec of Pod
-spec connect_get_namespaced_pod_exec(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_exec(Ctx, Name, Namespace) ->
    connect_get_namespaced_pod_exec(Ctx, Name, Namespace, #{}).

-spec connect_get_namespaced_pod_exec(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_exec(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/exec"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['command', 'container', 'stderr', 'stdin', 'stdout', 'tty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to portforward of Pod
-spec connect_get_namespaced_pod_portforward(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_portforward(Ctx, Name, Namespace) ->
    connect_get_namespaced_pod_portforward(Ctx, Name, Namespace, #{}).

-spec connect_get_namespaced_pod_portforward(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_portforward(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/portforward"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['ports'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to proxy of Pod
-spec connect_get_namespaced_pod_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_proxy(Ctx, Name, Namespace) ->
    connect_get_namespaced_pod_proxy(Ctx, Name, Namespace, #{}).

-spec connect_get_namespaced_pod_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to proxy of Pod
-spec connect_get_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_get_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_get_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to proxy of Service
-spec connect_get_namespaced_service_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_service_proxy(Ctx, Name, Namespace) ->
    connect_get_namespaced_service_proxy(Ctx, Name, Namespace, #{}).

-spec connect_get_namespaced_service_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_service_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to proxy of Service
-spec connect_get_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_get_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_get_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to proxy of Node
-spec connect_get_node_proxy(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_node_proxy(Ctx, Name) ->
    connect_get_node_proxy(Ctx, Name, #{}).

-spec connect_get_node_proxy(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_node_proxy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/nodes/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect GET requests to proxy of Node
-spec connect_get_node_proxy_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_node_proxy_with_path(Ctx, Name, Path) ->
    connect_get_node_proxy_with_path(Ctx, Name, Path, #{}).

-spec connect_get_node_proxy_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_get_node_proxy_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/nodes/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect HEAD requests to proxy of Pod
-spec connect_head_namespaced_pod_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_pod_proxy(Ctx, Name, Namespace) ->
    connect_head_namespaced_pod_proxy(Ctx, Name, Namespace, #{}).

-spec connect_head_namespaced_pod_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_pod_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect HEAD requests to proxy of Pod
-spec connect_head_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_head_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_head_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect HEAD requests to proxy of Service
-spec connect_head_namespaced_service_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_service_proxy(Ctx, Name, Namespace) ->
    connect_head_namespaced_service_proxy(Ctx, Name, Namespace, #{}).

-spec connect_head_namespaced_service_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_service_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect HEAD requests to proxy of Service
-spec connect_head_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_head_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_head_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect HEAD requests to proxy of Node
-spec connect_head_node_proxy(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_node_proxy(Ctx, Name) ->
    connect_head_node_proxy(Ctx, Name, #{}).

-spec connect_head_node_proxy(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_node_proxy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/nodes/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect HEAD requests to proxy of Node
-spec connect_head_node_proxy_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_node_proxy_with_path(Ctx, Name, Path) ->
    connect_head_node_proxy_with_path(Ctx, Name, Path, #{}).

-spec connect_head_node_proxy_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_head_node_proxy_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/nodes/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect OPTIONS requests to proxy of Pod
-spec connect_options_namespaced_pod_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_pod_proxy(Ctx, Name, Namespace) ->
    connect_options_namespaced_pod_proxy(Ctx, Name, Namespace, #{}).

-spec connect_options_namespaced_pod_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_pod_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect OPTIONS requests to proxy of Pod
-spec connect_options_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_options_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_options_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect OPTIONS requests to proxy of Service
-spec connect_options_namespaced_service_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_service_proxy(Ctx, Name, Namespace) ->
    connect_options_namespaced_service_proxy(Ctx, Name, Namespace, #{}).

-spec connect_options_namespaced_service_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_service_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect OPTIONS requests to proxy of Service
-spec connect_options_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_options_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_options_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect OPTIONS requests to proxy of Node
-spec connect_options_node_proxy(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_node_proxy(Ctx, Name) ->
    connect_options_node_proxy(Ctx, Name, #{}).

-spec connect_options_node_proxy(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_node_proxy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/nodes/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect OPTIONS requests to proxy of Node
-spec connect_options_node_proxy_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_node_proxy_with_path(Ctx, Name, Path) ->
    connect_options_node_proxy_with_path(Ctx, Name, Path, #{}).

-spec connect_options_node_proxy_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_options_node_proxy_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/nodes/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PATCH requests to proxy of Pod
-spec connect_patch_namespaced_pod_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_pod_proxy(Ctx, Name, Namespace) ->
    connect_patch_namespaced_pod_proxy(Ctx, Name, Namespace, #{}).

-spec connect_patch_namespaced_pod_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_pod_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PATCH requests to proxy of Pod
-spec connect_patch_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_patch_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_patch_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PATCH requests to proxy of Service
-spec connect_patch_namespaced_service_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_service_proxy(Ctx, Name, Namespace) ->
    connect_patch_namespaced_service_proxy(Ctx, Name, Namespace, #{}).

-spec connect_patch_namespaced_service_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_service_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PATCH requests to proxy of Service
-spec connect_patch_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_patch_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_patch_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PATCH requests to proxy of Node
-spec connect_patch_node_proxy(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_node_proxy(Ctx, Name) ->
    connect_patch_node_proxy(Ctx, Name, #{}).

-spec connect_patch_node_proxy(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_node_proxy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/nodes/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PATCH requests to proxy of Node
-spec connect_patch_node_proxy_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_node_proxy_with_path(Ctx, Name, Path) ->
    connect_patch_node_proxy_with_path(Ctx, Name, Path, #{}).

-spec connect_patch_node_proxy_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_patch_node_proxy_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/nodes/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to attach of Pod
-spec connect_post_namespaced_pod_attach(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_attach(Ctx, Name, Namespace) ->
    connect_post_namespaced_pod_attach(Ctx, Name, Namespace, #{}).

-spec connect_post_namespaced_pod_attach(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_attach(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/attach"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['container', 'stderr', 'stdin', 'stdout', 'tty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to exec of Pod
-spec connect_post_namespaced_pod_exec(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_exec(Ctx, Name, Namespace) ->
    connect_post_namespaced_pod_exec(Ctx, Name, Namespace, #{}).

-spec connect_post_namespaced_pod_exec(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_exec(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/exec"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['command', 'container', 'stderr', 'stdin', 'stdout', 'tty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to portforward of Pod
-spec connect_post_namespaced_pod_portforward(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_portforward(Ctx, Name, Namespace) ->
    connect_post_namespaced_pod_portforward(Ctx, Name, Namespace, #{}).

-spec connect_post_namespaced_pod_portforward(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_portforward(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/portforward"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['ports'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to proxy of Pod
-spec connect_post_namespaced_pod_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_proxy(Ctx, Name, Namespace) ->
    connect_post_namespaced_pod_proxy(Ctx, Name, Namespace, #{}).

-spec connect_post_namespaced_pod_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to proxy of Pod
-spec connect_post_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_post_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_post_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to proxy of Service
-spec connect_post_namespaced_service_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_service_proxy(Ctx, Name, Namespace) ->
    connect_post_namespaced_service_proxy(Ctx, Name, Namespace, #{}).

-spec connect_post_namespaced_service_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_service_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to proxy of Service
-spec connect_post_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_post_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_post_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to proxy of Node
-spec connect_post_node_proxy(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_node_proxy(Ctx, Name) ->
    connect_post_node_proxy(Ctx, Name, #{}).

-spec connect_post_node_proxy(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_node_proxy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/nodes/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect POST requests to proxy of Node
-spec connect_post_node_proxy_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_node_proxy_with_path(Ctx, Name, Path) ->
    connect_post_node_proxy_with_path(Ctx, Name, Path, #{}).

-spec connect_post_node_proxy_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_post_node_proxy_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/nodes/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PUT requests to proxy of Pod
-spec connect_put_namespaced_pod_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_pod_proxy(Ctx, Name, Namespace) ->
    connect_put_namespaced_pod_proxy(Ctx, Name, Namespace, #{}).

-spec connect_put_namespaced_pod_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_pod_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PUT requests to proxy of Pod
-spec connect_put_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_put_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_put_namespaced_pod_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_pod_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PUT requests to proxy of Service
-spec connect_put_namespaced_service_proxy(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_service_proxy(Ctx, Name, Namespace) ->
    connect_put_namespaced_service_proxy(Ctx, Name, Namespace, #{}).

-spec connect_put_namespaced_service_proxy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_service_proxy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PUT requests to proxy of Service
-spec connect_put_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path) ->
    connect_put_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, #{}).

-spec connect_put_namespaced_service_proxy_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_namespaced_service_proxy_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PUT requests to proxy of Node
-spec connect_put_node_proxy(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_node_proxy(Ctx, Name) ->
    connect_put_node_proxy(Ctx, Name, #{}).

-spec connect_put_node_proxy(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_node_proxy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/nodes/", Name, "/proxy"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% connect PUT requests to proxy of Node
-spec connect_put_node_proxy_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_node_proxy_with_path(Ctx, Name, Path) ->
    connect_put_node_proxy_with_path(Ctx, Name, Path, #{}).

-spec connect_put_node_proxy_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
connect_put_node_proxy_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/nodes/", Name, "/proxy/", Path, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['path'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a Namespace
-spec create_namespace(ctx:ctx(), kuberl_v1_namespace:kuberl_v1_namespace()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespace(Ctx, Body) ->
    create_namespace(Ctx, Body, #{}).

-spec create_namespace(ctx:ctx(), kuberl_v1_namespace:kuberl_v1_namespace(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespace(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a Binding
-spec create_namespaced_binding(ctx:ctx(), binary(), kuberl_v1_binding:kuberl_v1_binding()) -> {ok, kuberl_v1_binding:kuberl_v1_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_binding(Ctx, Namespace, Body) ->
    create_namespaced_binding(Ctx, Namespace, Body, #{}).

-spec create_namespaced_binding(ctx:ctx(), binary(), kuberl_v1_binding:kuberl_v1_binding(), maps:map()) -> {ok, kuberl_v1_binding:kuberl_v1_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_binding(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/bindings"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a ConfigMap
-spec create_namespaced_config_map(ctx:ctx(), binary(), kuberl_v1_config_map:kuberl_v1_config_map()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_config_map(Ctx, Namespace, Body) ->
    create_namespaced_config_map(Ctx, Namespace, Body, #{}).

-spec create_namespaced_config_map(ctx:ctx(), binary(), kuberl_v1_config_map:kuberl_v1_config_map(), maps:map()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_config_map(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/configmaps"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create Endpoints
-spec create_namespaced_endpoints(ctx:ctx(), binary(), kuberl_v1_endpoints:kuberl_v1_endpoints()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_endpoints(Ctx, Namespace, Body) ->
    create_namespaced_endpoints(Ctx, Namespace, Body, #{}).

-spec create_namespaced_endpoints(ctx:ctx(), binary(), kuberl_v1_endpoints:kuberl_v1_endpoints(), maps:map()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_endpoints(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/endpoints"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create an Event
-spec create_namespaced_event(ctx:ctx(), binary(), kuberl_v1_event:kuberl_v1_event()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_event(Ctx, Namespace, Body) ->
    create_namespaced_event(Ctx, Namespace, Body, #{}).

-spec create_namespaced_event(ctx:ctx(), binary(), kuberl_v1_event:kuberl_v1_event(), maps:map()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_event(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/events"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a LimitRange
-spec create_namespaced_limit_range(ctx:ctx(), binary(), kuberl_v1_limit_range:kuberl_v1_limit_range()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_limit_range(Ctx, Namespace, Body) ->
    create_namespaced_limit_range(Ctx, Namespace, Body, #{}).

-spec create_namespaced_limit_range(ctx:ctx(), binary(), kuberl_v1_limit_range:kuberl_v1_limit_range(), maps:map()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_limit_range(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/limitranges"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a PersistentVolumeClaim
-spec create_namespaced_persistent_volume_claim(ctx:ctx(), binary(), kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_persistent_volume_claim(Ctx, Namespace, Body) ->
    create_namespaced_persistent_volume_claim(Ctx, Namespace, Body, #{}).

-spec create_namespaced_persistent_volume_claim(ctx:ctx(), binary(), kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_persistent_volume_claim(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a Pod
-spec create_namespaced_pod(ctx:ctx(), binary(), kuberl_v1_pod:kuberl_v1_pod()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod(Ctx, Namespace, Body) ->
    create_namespaced_pod(Ctx, Namespace, Body, #{}).

-spec create_namespaced_pod(ctx:ctx(), binary(), kuberl_v1_pod:kuberl_v1_pod(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create binding of a Pod
-spec create_namespaced_pod_binding(ctx:ctx(), binary(), binary(), kuberl_v1_binding:kuberl_v1_binding()) -> {ok, kuberl_v1_binding:kuberl_v1_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_binding(Ctx, Name, Namespace, Body) ->
    create_namespaced_pod_binding(Ctx, Name, Namespace, Body, #{}).

-spec create_namespaced_pod_binding(ctx:ctx(), binary(), binary(), kuberl_v1_binding:kuberl_v1_binding(), maps:map()) -> {ok, kuberl_v1_binding:kuberl_v1_binding(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_binding(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/binding"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create eviction of a Pod
-spec create_namespaced_pod_eviction(ctx:ctx(), binary(), binary(), kuberl_v1beta1_eviction:kuberl_v1beta1_eviction()) -> {ok, kuberl_v1beta1_eviction:kuberl_v1beta1_eviction(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_eviction(Ctx, Name, Namespace, Body) ->
    create_namespaced_pod_eviction(Ctx, Name, Namespace, Body, #{}).

-spec create_namespaced_pod_eviction(ctx:ctx(), binary(), binary(), kuberl_v1beta1_eviction:kuberl_v1beta1_eviction(), maps:map()) -> {ok, kuberl_v1beta1_eviction:kuberl_v1beta1_eviction(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_eviction(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/eviction"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a PodTemplate
-spec create_namespaced_pod_template(ctx:ctx(), binary(), kuberl_v1_pod_template:kuberl_v1_pod_template()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_template(Ctx, Namespace, Body) ->
    create_namespaced_pod_template(Ctx, Namespace, Body, #{}).

-spec create_namespaced_pod_template(ctx:ctx(), binary(), kuberl_v1_pod_template:kuberl_v1_pod_template(), maps:map()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_template(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/podtemplates"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a ReplicationController
-spec create_namespaced_replication_controller(ctx:ctx(), binary(), kuberl_v1_replication_controller:kuberl_v1_replication_controller()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_replication_controller(Ctx, Namespace, Body) ->
    create_namespaced_replication_controller(Ctx, Namespace, Body, #{}).

-spec create_namespaced_replication_controller(ctx:ctx(), binary(), kuberl_v1_replication_controller:kuberl_v1_replication_controller(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_replication_controller(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a ResourceQuota
-spec create_namespaced_resource_quota(ctx:ctx(), binary(), kuberl_v1_resource_quota:kuberl_v1_resource_quota()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_resource_quota(Ctx, Namespace, Body) ->
    create_namespaced_resource_quota(Ctx, Namespace, Body, #{}).

-spec create_namespaced_resource_quota(ctx:ctx(), binary(), kuberl_v1_resource_quota:kuberl_v1_resource_quota(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_resource_quota(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a Secret
-spec create_namespaced_secret(ctx:ctx(), binary(), kuberl_v1_secret:kuberl_v1_secret()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_secret(Ctx, Namespace, Body) ->
    create_namespaced_secret(Ctx, Namespace, Body, #{}).

-spec create_namespaced_secret(ctx:ctx(), binary(), kuberl_v1_secret:kuberl_v1_secret(), maps:map()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_secret(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/secrets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a Service
-spec create_namespaced_service(ctx:ctx(), binary(), kuberl_v1_service:kuberl_v1_service()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_service(Ctx, Namespace, Body) ->
    create_namespaced_service(Ctx, Namespace, Body, #{}).

-spec create_namespaced_service(ctx:ctx(), binary(), kuberl_v1_service:kuberl_v1_service(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_service(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/services"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a ServiceAccount
-spec create_namespaced_service_account(ctx:ctx(), binary(), kuberl_v1_service_account:kuberl_v1_service_account()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_service_account(Ctx, Namespace, Body) ->
    create_namespaced_service_account(Ctx, Namespace, Body, #{}).

-spec create_namespaced_service_account(ctx:ctx(), binary(), kuberl_v1_service_account:kuberl_v1_service_account(), maps:map()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_service_account(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/namespaces/", Namespace, "/serviceaccounts"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a Node
-spec create_node(ctx:ctx(), kuberl_v1_node:kuberl_v1_node()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_node(Ctx, Body) ->
    create_node(Ctx, Body, #{}).

-spec create_node(ctx:ctx(), kuberl_v1_node:kuberl_v1_node(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_node(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/nodes"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a PersistentVolume
-spec create_persistent_volume(ctx:ctx(), kuberl_v1_persistent_volume:kuberl_v1_persistent_volume()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_persistent_volume(Ctx, Body) ->
    create_persistent_volume(Ctx, Body, #{}).

-spec create_persistent_volume(ctx:ctx(), kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_persistent_volume(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/persistentvolumes"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of ConfigMap
-spec delete_collection_namespaced_config_map(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_config_map(Ctx, Namespace) ->
    delete_collection_namespaced_config_map(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_config_map(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_config_map(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/configmaps"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of Endpoints
-spec delete_collection_namespaced_endpoints(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_endpoints(Ctx, Namespace) ->
    delete_collection_namespaced_endpoints(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_endpoints(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_endpoints(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/endpoints"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of Event
-spec delete_collection_namespaced_event(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_event(Ctx, Namespace) ->
    delete_collection_namespaced_event(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_event(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_event(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/events"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of LimitRange
-spec delete_collection_namespaced_limit_range(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_limit_range(Ctx, Namespace) ->
    delete_collection_namespaced_limit_range(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_limit_range(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_limit_range(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/limitranges"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of PersistentVolumeClaim
-spec delete_collection_namespaced_persistent_volume_claim(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_persistent_volume_claim(Ctx, Namespace) ->
    delete_collection_namespaced_persistent_volume_claim(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_persistent_volume_claim(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_persistent_volume_claim(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of Pod
-spec delete_collection_namespaced_pod(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_pod(Ctx, Namespace) ->
    delete_collection_namespaced_pod(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_pod(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_pod(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/pods"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of PodTemplate
-spec delete_collection_namespaced_pod_template(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_pod_template(Ctx, Namespace) ->
    delete_collection_namespaced_pod_template(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_pod_template(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_pod_template(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/podtemplates"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of ReplicationController
-spec delete_collection_namespaced_replication_controller(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_replication_controller(Ctx, Namespace) ->
    delete_collection_namespaced_replication_controller(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_replication_controller(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_replication_controller(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of ResourceQuota
-spec delete_collection_namespaced_resource_quota(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_resource_quota(Ctx, Namespace) ->
    delete_collection_namespaced_resource_quota(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_resource_quota(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_resource_quota(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of Secret
-spec delete_collection_namespaced_secret(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_secret(Ctx, Namespace) ->
    delete_collection_namespaced_secret(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_secret(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_secret(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/secrets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of ServiceAccount
-spec delete_collection_namespaced_service_account(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_service_account(Ctx, Namespace) ->
    delete_collection_namespaced_service_account(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_service_account(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_service_account(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/serviceaccounts"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of Node
-spec delete_collection_node(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_node(Ctx) ->
    delete_collection_node(Ctx, #{}).

-spec delete_collection_node(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_node(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/nodes"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of PersistentVolume
-spec delete_collection_persistent_volume(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_persistent_volume(Ctx) ->
    delete_collection_persistent_volume(Ctx, #{}).

-spec delete_collection_persistent_volume(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_persistent_volume(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/persistentvolumes"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a Namespace
-spec delete_namespace(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespace(Ctx, Name, Body) ->
    delete_namespace(Ctx, Name, Body, #{}).

-spec delete_namespace(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespace(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a ConfigMap
-spec delete_namespaced_config_map(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_config_map(Ctx, Name, Namespace, Body) ->
    delete_namespaced_config_map(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_config_map(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_config_map(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/configmaps/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete Endpoints
-spec delete_namespaced_endpoints(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_endpoints(Ctx, Name, Namespace, Body) ->
    delete_namespaced_endpoints(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_endpoints(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_endpoints(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/endpoints/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete an Event
-spec delete_namespaced_event(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_event(Ctx, Name, Namespace, Body) ->
    delete_namespaced_event(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_event(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_event(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/events/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a LimitRange
-spec delete_namespaced_limit_range(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_limit_range(Ctx, Name, Namespace, Body) ->
    delete_namespaced_limit_range(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_limit_range(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_limit_range(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/limitranges/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a PersistentVolumeClaim
-spec delete_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body) ->
    delete_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a Pod
-spec delete_namespaced_pod(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_pod(Ctx, Name, Namespace, Body) ->
    delete_namespaced_pod(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_pod(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_pod(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a PodTemplate
-spec delete_namespaced_pod_template(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_pod_template(Ctx, Name, Namespace, Body) ->
    delete_namespaced_pod_template(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_pod_template(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_pod_template(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/podtemplates/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a ReplicationController
-spec delete_namespaced_replication_controller(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_replication_controller(Ctx, Name, Namespace, Body) ->
    delete_namespaced_replication_controller(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_replication_controller(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_replication_controller(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a ResourceQuota
-spec delete_namespaced_resource_quota(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_resource_quota(Ctx, Name, Namespace, Body) ->
    delete_namespaced_resource_quota(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_resource_quota(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_resource_quota(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a Secret
-spec delete_namespaced_secret(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_secret(Ctx, Name, Namespace, Body) ->
    delete_namespaced_secret(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_secret(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_secret(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/secrets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a Service
-spec delete_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_service(Ctx, Name, Namespace) ->
    delete_namespaced_service(Ctx, Name, Namespace, #{}).

-spec delete_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a ServiceAccount
-spec delete_namespaced_service_account(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_service_account(Ctx, Name, Namespace, Body) ->
    delete_namespaced_service_account(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_service_account(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_service_account(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/namespaces/", Namespace, "/serviceaccounts/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a Node
-spec delete_node(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_node(Ctx, Name, Body) ->
    delete_node(Ctx, Name, Body, #{}).

-spec delete_node(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_node(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/nodes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a PersistentVolume
-spec delete_persistent_volume(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_persistent_volume(Ctx, Name, Body) ->
    delete_persistent_volume(Ctx, Name, Body, #{}).

-spec delete_persistent_volume(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_persistent_volume(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/persistentvolumes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% get available resources
-spec get_api_resources(ctx:ctx()) -> {ok, kuberl_v1_api_resource_list:kuberl_v1_api_resource_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_resources(Ctx) ->
    get_api_resources(Ctx, #{}).

-spec get_api_resources(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_api_resource_list:kuberl_v1_api_resource_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_api_resources(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list objects of kind ComponentStatus
-spec list_component_status(ctx:ctx()) -> {ok, kuberl_v1_component_status_list:kuberl_v1_component_status_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_component_status(Ctx) ->
    list_component_status(Ctx, #{}).

-spec list_component_status(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_component_status_list:kuberl_v1_component_status_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_component_status(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/componentstatuses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ConfigMap
-spec list_config_map_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_config_map_list:kuberl_v1_config_map_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_config_map_for_all_namespaces(Ctx) ->
    list_config_map_for_all_namespaces(Ctx, #{}).

-spec list_config_map_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_config_map_list:kuberl_v1_config_map_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_config_map_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/configmaps"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Endpoints
-spec list_endpoints_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_endpoints_list:kuberl_v1_endpoints_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_endpoints_for_all_namespaces(Ctx) ->
    list_endpoints_for_all_namespaces(Ctx, #{}).

-spec list_endpoints_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_endpoints_list:kuberl_v1_endpoints_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_endpoints_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/endpoints"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Event
-spec list_event_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_event_list:kuberl_v1_event_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_event_for_all_namespaces(Ctx) ->
    list_event_for_all_namespaces(Ctx, #{}).

-spec list_event_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_event_list:kuberl_v1_event_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_event_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/events"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind LimitRange
-spec list_limit_range_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_limit_range_list:kuberl_v1_limit_range_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_limit_range_for_all_namespaces(Ctx) ->
    list_limit_range_for_all_namespaces(Ctx, #{}).

-spec list_limit_range_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_limit_range_list:kuberl_v1_limit_range_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_limit_range_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/limitranges"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Namespace
-spec list_namespace(ctx:ctx()) -> {ok, kuberl_v1_namespace_list:kuberl_v1_namespace_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespace(Ctx) ->
    list_namespace(Ctx, #{}).

-spec list_namespace(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_namespace_list:kuberl_v1_namespace_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespace(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ConfigMap
-spec list_namespaced_config_map(ctx:ctx(), binary()) -> {ok, kuberl_v1_config_map_list:kuberl_v1_config_map_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_config_map(Ctx, Namespace) ->
    list_namespaced_config_map(Ctx, Namespace, #{}).

-spec list_namespaced_config_map(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_config_map_list:kuberl_v1_config_map_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_config_map(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/configmaps"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Endpoints
-spec list_namespaced_endpoints(ctx:ctx(), binary()) -> {ok, kuberl_v1_endpoints_list:kuberl_v1_endpoints_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_endpoints(Ctx, Namespace) ->
    list_namespaced_endpoints(Ctx, Namespace, #{}).

-spec list_namespaced_endpoints(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_endpoints_list:kuberl_v1_endpoints_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_endpoints(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/endpoints"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Event
-spec list_namespaced_event(ctx:ctx(), binary()) -> {ok, kuberl_v1_event_list:kuberl_v1_event_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_event(Ctx, Namespace) ->
    list_namespaced_event(Ctx, Namespace, #{}).

-spec list_namespaced_event(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_event_list:kuberl_v1_event_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_event(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/events"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind LimitRange
-spec list_namespaced_limit_range(ctx:ctx(), binary()) -> {ok, kuberl_v1_limit_range_list:kuberl_v1_limit_range_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_limit_range(Ctx, Namespace) ->
    list_namespaced_limit_range(Ctx, Namespace, #{}).

-spec list_namespaced_limit_range(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_limit_range_list:kuberl_v1_limit_range_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_limit_range(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/limitranges"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PersistentVolumeClaim
-spec list_namespaced_persistent_volume_claim(ctx:ctx(), binary()) -> {ok, kuberl_v1_persistent_volume_claim_list:kuberl_v1_persistent_volume_claim_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_persistent_volume_claim(Ctx, Namespace) ->
    list_namespaced_persistent_volume_claim(Ctx, Namespace, #{}).

-spec list_namespaced_persistent_volume_claim(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim_list:kuberl_v1_persistent_volume_claim_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_persistent_volume_claim(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Pod
-spec list_namespaced_pod(ctx:ctx(), binary()) -> {ok, kuberl_v1_pod_list:kuberl_v1_pod_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_pod(Ctx, Namespace) ->
    list_namespaced_pod(Ctx, Namespace, #{}).

-spec list_namespaced_pod(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_pod_list:kuberl_v1_pod_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_pod(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PodTemplate
-spec list_namespaced_pod_template(ctx:ctx(), binary()) -> {ok, kuberl_v1_pod_template_list:kuberl_v1_pod_template_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_pod_template(Ctx, Namespace) ->
    list_namespaced_pod_template(Ctx, Namespace, #{}).

-spec list_namespaced_pod_template(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_pod_template_list:kuberl_v1_pod_template_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_pod_template(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/podtemplates"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ReplicationController
-spec list_namespaced_replication_controller(ctx:ctx(), binary()) -> {ok, kuberl_v1_replication_controller_list:kuberl_v1_replication_controller_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_replication_controller(Ctx, Namespace) ->
    list_namespaced_replication_controller(Ctx, Namespace, #{}).

-spec list_namespaced_replication_controller(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_replication_controller_list:kuberl_v1_replication_controller_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_replication_controller(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ResourceQuota
-spec list_namespaced_resource_quota(ctx:ctx(), binary()) -> {ok, kuberl_v1_resource_quota_list:kuberl_v1_resource_quota_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_resource_quota(Ctx, Namespace) ->
    list_namespaced_resource_quota(Ctx, Namespace, #{}).

-spec list_namespaced_resource_quota(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_resource_quota_list:kuberl_v1_resource_quota_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_resource_quota(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Secret
-spec list_namespaced_secret(ctx:ctx(), binary()) -> {ok, kuberl_v1_secret_list:kuberl_v1_secret_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_secret(Ctx, Namespace) ->
    list_namespaced_secret(Ctx, Namespace, #{}).

-spec list_namespaced_secret(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_secret_list:kuberl_v1_secret_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_secret(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/secrets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Service
-spec list_namespaced_service(ctx:ctx(), binary()) -> {ok, kuberl_v1_service_list:kuberl_v1_service_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_service(Ctx, Namespace) ->
    list_namespaced_service(Ctx, Namespace, #{}).

-spec list_namespaced_service(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_service_list:kuberl_v1_service_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_service(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/services"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ServiceAccount
-spec list_namespaced_service_account(ctx:ctx(), binary()) -> {ok, kuberl_v1_service_account_list:kuberl_v1_service_account_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_service_account(Ctx, Namespace) ->
    list_namespaced_service_account(Ctx, Namespace, #{}).

-spec list_namespaced_service_account(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_service_account_list:kuberl_v1_service_account_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_service_account(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/serviceaccounts"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Node
-spec list_node(ctx:ctx()) -> {ok, kuberl_v1_node_list:kuberl_v1_node_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_node(Ctx) ->
    list_node(Ctx, #{}).

-spec list_node(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_node_list:kuberl_v1_node_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_node(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/nodes"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PersistentVolume
-spec list_persistent_volume(ctx:ctx()) -> {ok, kuberl_v1_persistent_volume_list:kuberl_v1_persistent_volume_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_persistent_volume(Ctx) ->
    list_persistent_volume(Ctx, #{}).

-spec list_persistent_volume(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_persistent_volume_list:kuberl_v1_persistent_volume_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_persistent_volume(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/persistentvolumes"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PersistentVolumeClaim
-spec list_persistent_volume_claim_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_persistent_volume_claim_list:kuberl_v1_persistent_volume_claim_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_persistent_volume_claim_for_all_namespaces(Ctx) ->
    list_persistent_volume_claim_for_all_namespaces(Ctx, #{}).

-spec list_persistent_volume_claim_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim_list:kuberl_v1_persistent_volume_claim_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_persistent_volume_claim_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/persistentvolumeclaims"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Pod
-spec list_pod_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_pod_list:kuberl_v1_pod_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_for_all_namespaces(Ctx) ->
    list_pod_for_all_namespaces(Ctx, #{}).

-spec list_pod_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_pod_list:kuberl_v1_pod_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/pods"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PodTemplate
-spec list_pod_template_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_pod_template_list:kuberl_v1_pod_template_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_template_for_all_namespaces(Ctx) ->
    list_pod_template_for_all_namespaces(Ctx, #{}).

-spec list_pod_template_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_pod_template_list:kuberl_v1_pod_template_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_template_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/podtemplates"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ReplicationController
-spec list_replication_controller_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_replication_controller_list:kuberl_v1_replication_controller_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_replication_controller_for_all_namespaces(Ctx) ->
    list_replication_controller_for_all_namespaces(Ctx, #{}).

-spec list_replication_controller_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_replication_controller_list:kuberl_v1_replication_controller_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_replication_controller_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/replicationcontrollers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ResourceQuota
-spec list_resource_quota_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_resource_quota_list:kuberl_v1_resource_quota_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_resource_quota_for_all_namespaces(Ctx) ->
    list_resource_quota_for_all_namespaces(Ctx, #{}).

-spec list_resource_quota_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_resource_quota_list:kuberl_v1_resource_quota_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_resource_quota_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/resourcequotas"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Secret
-spec list_secret_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_secret_list:kuberl_v1_secret_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_secret_for_all_namespaces(Ctx) ->
    list_secret_for_all_namespaces(Ctx, #{}).

-spec list_secret_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_secret_list:kuberl_v1_secret_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_secret_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/secrets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ServiceAccount
-spec list_service_account_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_service_account_list:kuberl_v1_service_account_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_service_account_for_all_namespaces(Ctx) ->
    list_service_account_for_all_namespaces(Ctx, #{}).

-spec list_service_account_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_service_account_list:kuberl_v1_service_account_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_service_account_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/serviceaccounts"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Service
-spec list_service_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_service_list:kuberl_v1_service_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_service_for_all_namespaces(Ctx) ->
    list_service_for_all_namespaces(Ctx, #{}).

-spec list_service_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_service_list:kuberl_v1_service_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_service_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/services"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Namespace
-spec patch_namespace(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespace(Ctx, Name, Body) ->
    patch_namespace(Ctx, Name, Body, #{}).

-spec patch_namespace(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespace(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified Namespace
-spec patch_namespace_status(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespace_status(Ctx, Name, Body) ->
    patch_namespace_status(Ctx, Name, Body, #{}).

-spec patch_namespace_status(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespace_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified ConfigMap
-spec patch_namespaced_config_map(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_config_map(Ctx, Name, Namespace, Body) ->
    patch_namespaced_config_map(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_config_map(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_config_map(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/configmaps/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Endpoints
-spec patch_namespaced_endpoints(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_endpoints(Ctx, Name, Namespace, Body) ->
    patch_namespaced_endpoints(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_endpoints(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_endpoints(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/endpoints/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Event
-spec patch_namespaced_event(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_event(Ctx, Name, Namespace, Body) ->
    patch_namespaced_event(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_event(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_event(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/events/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified LimitRange
-spec patch_namespaced_limit_range(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_limit_range(Ctx, Name, Namespace, Body) ->
    patch_namespaced_limit_range(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_limit_range(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_limit_range(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/limitranges/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified PersistentVolumeClaim
-spec patch_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body) ->
    patch_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified PersistentVolumeClaim
-spec patch_namespaced_persistent_volume_claim_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_persistent_volume_claim_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Pod
-spec patch_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod(Ctx, Name, Namespace, Body) ->
    patch_namespaced_pod(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified Pod
-spec patch_namespaced_pod_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_pod_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_pod_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified PodTemplate
-spec patch_namespaced_pod_template(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_template(Ctx, Name, Namespace, Body) ->
    patch_namespaced_pod_template(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_pod_template(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_template(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/podtemplates/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified ReplicationController
-spec patch_namespaced_replication_controller(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replication_controller(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replication_controller(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update scale of the specified ReplicationController
-spec patch_namespaced_replication_controller_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_scale:kuberl_v1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller_scale(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replication_controller_scale(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replication_controller_scale(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_scale:kuberl_v1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified ReplicationController
-spec patch_namespaced_replication_controller_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replication_controller_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replication_controller_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified ResourceQuota
-spec patch_namespaced_resource_quota(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_resource_quota(Ctx, Name, Namespace, Body) ->
    patch_namespaced_resource_quota(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_resource_quota(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_resource_quota(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified ResourceQuota
-spec patch_namespaced_resource_quota_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_resource_quota_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_resource_quota_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_resource_quota_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_resource_quota_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Secret
-spec patch_namespaced_secret(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_secret(Ctx, Name, Namespace, Body) ->
    patch_namespaced_secret(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_secret(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_secret(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/secrets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Service
-spec patch_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_service(Ctx, Name, Namespace, Body) ->
    patch_namespaced_service(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_service(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_service(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified ServiceAccount
-spec patch_namespaced_service_account(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_service_account(Ctx, Name, Namespace, Body) ->
    patch_namespaced_service_account(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_service_account(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_service_account(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/serviceaccounts/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified Service
-spec patch_namespaced_service_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_service_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_service_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_service_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_service_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Node
-spec patch_node(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_node(Ctx, Name, Body) ->
    patch_node(Ctx, Name, Body, #{}).

-spec patch_node(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_node(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/nodes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified Node
-spec patch_node_status(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_node_status(Ctx, Name, Body) ->
    patch_node_status(Ctx, Name, Body, #{}).

-spec patch_node_status(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_node_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/nodes/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified PersistentVolume
-spec patch_persistent_volume(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_persistent_volume(Ctx, Name, Body) ->
    patch_persistent_volume(Ctx, Name, Body, #{}).

-spec patch_persistent_volume(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_persistent_volume(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/persistentvolumes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified PersistentVolume
-spec patch_persistent_volume_status(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_persistent_volume_status(Ctx, Name, Body) ->
    patch_persistent_volume_status(Ctx, Name, Body, #{}).

-spec patch_persistent_volume_status(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_persistent_volume_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/persistentvolumes/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy DELETE requests to Pod
-spec proxy_delete_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_pod(Ctx, Name, Namespace) ->
    proxy_delete_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec proxy_delete_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy DELETE requests to Pod
-spec proxy_delete_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_pod_with_path(Ctx, Name, Namespace, Path) ->
    proxy_delete_namespaced_pod_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_delete_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_pod_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy DELETE requests to Service
-spec proxy_delete_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_service(Ctx, Name, Namespace) ->
    proxy_delete_namespaced_service(Ctx, Name, Namespace, #{}).

-spec proxy_delete_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy DELETE requests to Service
-spec proxy_delete_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_service_with_path(Ctx, Name, Namespace, Path) ->
    proxy_delete_namespaced_service_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_delete_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_namespaced_service_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy DELETE requests to Node
-spec proxy_delete_node(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_node(Ctx, Name) ->
    proxy_delete_node(Ctx, Name, #{}).

-spec proxy_delete_node(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/proxy/nodes/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy DELETE requests to Node
-spec proxy_delete_node_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_node_with_path(Ctx, Name, Path) ->
    proxy_delete_node_with_path(Ctx, Name, Path, #{}).

-spec proxy_delete_node_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_delete_node_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/api/v1/proxy/nodes/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy GET requests to Pod
-spec proxy_get_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_pod(Ctx, Name, Namespace) ->
    proxy_get_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec proxy_get_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy GET requests to Pod
-spec proxy_get_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_pod_with_path(Ctx, Name, Namespace, Path) ->
    proxy_get_namespaced_pod_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_get_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_pod_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy GET requests to Service
-spec proxy_get_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_service(Ctx, Name, Namespace) ->
    proxy_get_namespaced_service(Ctx, Name, Namespace, #{}).

-spec proxy_get_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy GET requests to Service
-spec proxy_get_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_service_with_path(Ctx, Name, Namespace, Path) ->
    proxy_get_namespaced_service_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_get_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_namespaced_service_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy GET requests to Node
-spec proxy_get_node(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_node(Ctx, Name) ->
    proxy_get_node(Ctx, Name, #{}).

-spec proxy_get_node(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/proxy/nodes/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy GET requests to Node
-spec proxy_get_node_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_node_with_path(Ctx, Name, Path) ->
    proxy_get_node_with_path(Ctx, Name, Path, #{}).

-spec proxy_get_node_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_get_node_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/proxy/nodes/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy HEAD requests to Pod
-spec proxy_head_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_pod(Ctx, Name, Namespace) ->
    proxy_head_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec proxy_head_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy HEAD requests to Pod
-spec proxy_head_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_pod_with_path(Ctx, Name, Namespace, Path) ->
    proxy_head_namespaced_pod_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_head_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_pod_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy HEAD requests to Service
-spec proxy_head_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_service(Ctx, Name, Namespace) ->
    proxy_head_namespaced_service(Ctx, Name, Namespace, #{}).

-spec proxy_head_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy HEAD requests to Service
-spec proxy_head_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_service_with_path(Ctx, Name, Namespace, Path) ->
    proxy_head_namespaced_service_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_head_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_namespaced_service_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy HEAD requests to Node
-spec proxy_head_node(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_node(Ctx, Name) ->
    proxy_head_node(Ctx, Name, #{}).

-spec proxy_head_node(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/proxy/nodes/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy HEAD requests to Node
-spec proxy_head_node_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_node_with_path(Ctx, Name, Path) ->
    proxy_head_node_with_path(Ctx, Name, Path, #{}).

-spec proxy_head_node_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_head_node_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = head,
    Path = ["/api/v1/proxy/nodes/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy OPTIONS requests to Pod
-spec proxy_options_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_pod(Ctx, Name, Namespace) ->
    proxy_options_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec proxy_options_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy OPTIONS requests to Pod
-spec proxy_options_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_pod_with_path(Ctx, Name, Namespace, Path) ->
    proxy_options_namespaced_pod_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_options_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_pod_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy OPTIONS requests to Service
-spec proxy_options_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_service(Ctx, Name, Namespace) ->
    proxy_options_namespaced_service(Ctx, Name, Namespace, #{}).

-spec proxy_options_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy OPTIONS requests to Service
-spec proxy_options_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_service_with_path(Ctx, Name, Namespace, Path) ->
    proxy_options_namespaced_service_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_options_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_namespaced_service_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy OPTIONS requests to Node
-spec proxy_options_node(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_node(Ctx, Name) ->
    proxy_options_node(Ctx, Name, #{}).

-spec proxy_options_node(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/proxy/nodes/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy OPTIONS requests to Node
-spec proxy_options_node_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_node_with_path(Ctx, Name, Path) ->
    proxy_options_node_with_path(Ctx, Name, Path, #{}).

-spec proxy_options_node_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_options_node_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = options,
    Path = ["/api/v1/proxy/nodes/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PATCH requests to Pod
-spec proxy_patch_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_pod(Ctx, Name, Namespace) ->
    proxy_patch_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec proxy_patch_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PATCH requests to Pod
-spec proxy_patch_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_pod_with_path(Ctx, Name, Namespace, Path) ->
    proxy_patch_namespaced_pod_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_patch_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_pod_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PATCH requests to Service
-spec proxy_patch_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_service(Ctx, Name, Namespace) ->
    proxy_patch_namespaced_service(Ctx, Name, Namespace, #{}).

-spec proxy_patch_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PATCH requests to Service
-spec proxy_patch_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_service_with_path(Ctx, Name, Namespace, Path) ->
    proxy_patch_namespaced_service_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_patch_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_namespaced_service_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PATCH requests to Node
-spec proxy_patch_node(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_node(Ctx, Name) ->
    proxy_patch_node(Ctx, Name, #{}).

-spec proxy_patch_node(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/proxy/nodes/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PATCH requests to Node
-spec proxy_patch_node_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_node_with_path(Ctx, Name, Path) ->
    proxy_patch_node_with_path(Ctx, Name, Path, #{}).

-spec proxy_patch_node_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_patch_node_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/api/v1/proxy/nodes/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy POST requests to Pod
-spec proxy_post_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_pod(Ctx, Name, Namespace) ->
    proxy_post_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec proxy_post_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy POST requests to Pod
-spec proxy_post_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_pod_with_path(Ctx, Name, Namespace, Path) ->
    proxy_post_namespaced_pod_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_post_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_pod_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy POST requests to Service
-spec proxy_post_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_service(Ctx, Name, Namespace) ->
    proxy_post_namespaced_service(Ctx, Name, Namespace, #{}).

-spec proxy_post_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy POST requests to Service
-spec proxy_post_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_service_with_path(Ctx, Name, Namespace, Path) ->
    proxy_post_namespaced_service_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_post_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_namespaced_service_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy POST requests to Node
-spec proxy_post_node(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_node(Ctx, Name) ->
    proxy_post_node(Ctx, Name, #{}).

-spec proxy_post_node(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/proxy/nodes/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy POST requests to Node
-spec proxy_post_node_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_node_with_path(Ctx, Name, Path) ->
    proxy_post_node_with_path(Ctx, Name, Path, #{}).

-spec proxy_post_node_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_post_node_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/api/v1/proxy/nodes/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PUT requests to Pod
-spec proxy_put_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_pod(Ctx, Name, Namespace) ->
    proxy_put_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec proxy_put_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PUT requests to Pod
-spec proxy_put_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_pod_with_path(Ctx, Name, Namespace, Path) ->
    proxy_put_namespaced_pod_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_put_namespaced_pod_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_pod_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/pods/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PUT requests to Service
-spec proxy_put_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_service(Ctx, Name, Namespace) ->
    proxy_put_namespaced_service(Ctx, Name, Namespace, #{}).

-spec proxy_put_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PUT requests to Service
-spec proxy_put_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_service_with_path(Ctx, Name, Namespace, Path) ->
    proxy_put_namespaced_service_with_path(Ctx, Name, Namespace, Path, #{}).

-spec proxy_put_namespaced_service_with_path(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_namespaced_service_with_path(Ctx, Name, Namespace, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/proxy/namespaces/", Namespace, "/services/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PUT requests to Node
-spec proxy_put_node(ctx:ctx(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_node(Ctx, Name) ->
    proxy_put_node(Ctx, Name, #{}).

-spec proxy_put_node(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/proxy/nodes/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% proxy PUT requests to Node
-spec proxy_put_node_with_path(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_node_with_path(Ctx, Name, Path) ->
    proxy_put_node_with_path(Ctx, Name, Path, #{}).

-spec proxy_put_node_with_path(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
proxy_put_node_with_path(Ctx, Name, Path, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/proxy/nodes/", Name, "/", Path, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified ComponentStatus
-spec read_component_status(ctx:ctx(), binary()) -> {ok, kuberl_v1_component_status:kuberl_v1_component_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_component_status(Ctx, Name) ->
    read_component_status(Ctx, Name, #{}).

-spec read_component_status(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_component_status:kuberl_v1_component_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_component_status(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/componentstatuses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Namespace
-spec read_namespace(ctx:ctx(), binary()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespace(Ctx, Name) ->
    read_namespace(Ctx, Name, #{}).

-spec read_namespace(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespace(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified Namespace
-spec read_namespace_status(ctx:ctx(), binary()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespace_status(Ctx, Name) ->
    read_namespace_status(Ctx, Name, #{}).

-spec read_namespace_status(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespace_status(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified ConfigMap
-spec read_namespaced_config_map(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_config_map(Ctx, Name, Namespace) ->
    read_namespaced_config_map(Ctx, Name, Namespace, #{}).

-spec read_namespaced_config_map(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_config_map(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/configmaps/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Endpoints
-spec read_namespaced_endpoints(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_endpoints(Ctx, Name, Namespace) ->
    read_namespaced_endpoints(Ctx, Name, Namespace, #{}).

-spec read_namespaced_endpoints(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_endpoints(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/endpoints/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Event
-spec read_namespaced_event(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_event(Ctx, Name, Namespace) ->
    read_namespaced_event(Ctx, Name, Namespace, #{}).

-spec read_namespaced_event(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_event(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/events/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified LimitRange
-spec read_namespaced_limit_range(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_limit_range(Ctx, Name, Namespace) ->
    read_namespaced_limit_range(Ctx, Name, Namespace, #{}).

-spec read_namespaced_limit_range(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_limit_range(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/limitranges/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified PersistentVolumeClaim
-spec read_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_persistent_volume_claim(Ctx, Name, Namespace) ->
    read_namespaced_persistent_volume_claim(Ctx, Name, Namespace, #{}).

-spec read_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified PersistentVolumeClaim
-spec read_namespaced_persistent_volume_claim_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace) ->
    read_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_persistent_volume_claim_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Pod
-spec read_namespaced_pod(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod(Ctx, Name, Namespace) ->
    read_namespaced_pod(Ctx, Name, Namespace, #{}).

-spec read_namespaced_pod(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read log of the specified Pod
-spec read_namespaced_pod_log(ctx:ctx(), binary(), binary()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_log(Ctx, Name, Namespace) ->
    read_namespaced_pod_log(Ctx, Name, Namespace, #{}).

-spec read_namespaced_pod_log(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, binary(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_log(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/log"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['container', 'follow', 'limitBytes', 'pretty', 'previous', 'sinceSeconds', 'tailLines', 'timestamps'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified Pod
-spec read_namespaced_pod_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_status(Ctx, Name, Namespace) ->
    read_namespaced_pod_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_pod_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified PodTemplate
-spec read_namespaced_pod_template(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_template(Ctx, Name, Namespace) ->
    read_namespaced_pod_template(Ctx, Name, Namespace, #{}).

-spec read_namespaced_pod_template(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_template(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/podtemplates/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified ReplicationController
-spec read_namespaced_replication_controller(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller(Ctx, Name, Namespace) ->
    read_namespaced_replication_controller(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replication_controller(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read scale of the specified ReplicationController
-spec read_namespaced_replication_controller_scale(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_scale:kuberl_v1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller_scale(Ctx, Name, Namespace) ->
    read_namespaced_replication_controller_scale(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replication_controller_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_scale:kuberl_v1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller_scale(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified ReplicationController
-spec read_namespaced_replication_controller_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller_status(Ctx, Name, Namespace) ->
    read_namespaced_replication_controller_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replication_controller_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified ResourceQuota
-spec read_namespaced_resource_quota(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_resource_quota(Ctx, Name, Namespace) ->
    read_namespaced_resource_quota(Ctx, Name, Namespace, #{}).

-spec read_namespaced_resource_quota(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_resource_quota(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified ResourceQuota
-spec read_namespaced_resource_quota_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_resource_quota_status(Ctx, Name, Namespace) ->
    read_namespaced_resource_quota_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_resource_quota_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_resource_quota_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Secret
-spec read_namespaced_secret(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_secret(Ctx, Name, Namespace) ->
    read_namespaced_secret(Ctx, Name, Namespace, #{}).

-spec read_namespaced_secret(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_secret(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/secrets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Service
-spec read_namespaced_service(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_service(Ctx, Name, Namespace) ->
    read_namespaced_service(Ctx, Name, Namespace, #{}).

-spec read_namespaced_service(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_service(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified ServiceAccount
-spec read_namespaced_service_account(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_service_account(Ctx, Name, Namespace) ->
    read_namespaced_service_account(Ctx, Name, Namespace, #{}).

-spec read_namespaced_service_account(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_service_account(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/serviceaccounts/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified Service
-spec read_namespaced_service_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_service_status(Ctx, Name, Namespace) ->
    read_namespaced_service_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_service_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_service_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Node
-spec read_node(ctx:ctx(), binary()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_node(Ctx, Name) ->
    read_node(Ctx, Name, #{}).

-spec read_node(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_node(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/nodes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified Node
-spec read_node_status(ctx:ctx(), binary()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_node_status(Ctx, Name) ->
    read_node_status(Ctx, Name, #{}).

-spec read_node_status(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_node_status(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/nodes/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified PersistentVolume
-spec read_persistent_volume(ctx:ctx(), binary()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_persistent_volume(Ctx, Name) ->
    read_persistent_volume(Ctx, Name, #{}).

-spec read_persistent_volume(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_persistent_volume(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/persistentvolumes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified PersistentVolume
-spec read_persistent_volume_status(ctx:ctx(), binary()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_persistent_volume_status(Ctx, Name) ->
    read_persistent_volume_status(Ctx, Name, #{}).

-spec read_persistent_volume_status(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_persistent_volume_status(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/api/v1/persistentvolumes/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Namespace
-spec replace_namespace(ctx:ctx(), binary(), kuberl_v1_namespace:kuberl_v1_namespace()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespace(Ctx, Name, Body) ->
    replace_namespace(Ctx, Name, Body, #{}).

-spec replace_namespace(ctx:ctx(), binary(), kuberl_v1_namespace:kuberl_v1_namespace(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespace(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace finalize of the specified Namespace
-spec replace_namespace_finalize(ctx:ctx(), binary(), kuberl_v1_namespace:kuberl_v1_namespace()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespace_finalize(Ctx, Name, Body) ->
    replace_namespace_finalize(Ctx, Name, Body, #{}).

-spec replace_namespace_finalize(ctx:ctx(), binary(), kuberl_v1_namespace:kuberl_v1_namespace(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespace_finalize(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Name, "/finalize"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified Namespace
-spec replace_namespace_status(ctx:ctx(), binary(), kuberl_v1_namespace:kuberl_v1_namespace()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespace_status(Ctx, Name, Body) ->
    replace_namespace_status(Ctx, Name, Body, #{}).

-spec replace_namespace_status(ctx:ctx(), binary(), kuberl_v1_namespace:kuberl_v1_namespace(), maps:map()) -> {ok, kuberl_v1_namespace:kuberl_v1_namespace(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespace_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified ConfigMap
-spec replace_namespaced_config_map(ctx:ctx(), binary(), binary(), kuberl_v1_config_map:kuberl_v1_config_map()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_config_map(Ctx, Name, Namespace, Body) ->
    replace_namespaced_config_map(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_config_map(ctx:ctx(), binary(), binary(), kuberl_v1_config_map:kuberl_v1_config_map(), maps:map()) -> {ok, kuberl_v1_config_map:kuberl_v1_config_map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_config_map(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/configmaps/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Endpoints
-spec replace_namespaced_endpoints(ctx:ctx(), binary(), binary(), kuberl_v1_endpoints:kuberl_v1_endpoints()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_endpoints(Ctx, Name, Namespace, Body) ->
    replace_namespaced_endpoints(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_endpoints(ctx:ctx(), binary(), binary(), kuberl_v1_endpoints:kuberl_v1_endpoints(), maps:map()) -> {ok, kuberl_v1_endpoints:kuberl_v1_endpoints(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_endpoints(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/endpoints/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Event
-spec replace_namespaced_event(ctx:ctx(), binary(), binary(), kuberl_v1_event:kuberl_v1_event()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_event(Ctx, Name, Namespace, Body) ->
    replace_namespaced_event(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_event(ctx:ctx(), binary(), binary(), kuberl_v1_event:kuberl_v1_event(), maps:map()) -> {ok, kuberl_v1_event:kuberl_v1_event(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_event(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/events/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified LimitRange
-spec replace_namespaced_limit_range(ctx:ctx(), binary(), binary(), kuberl_v1_limit_range:kuberl_v1_limit_range()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_limit_range(Ctx, Name, Namespace, Body) ->
    replace_namespaced_limit_range(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_limit_range(ctx:ctx(), binary(), binary(), kuberl_v1_limit_range:kuberl_v1_limit_range(), maps:map()) -> {ok, kuberl_v1_limit_range:kuberl_v1_limit_range(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_limit_range(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/limitranges/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified PersistentVolumeClaim
-spec replace_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary(), kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body) ->
    replace_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_persistent_volume_claim(ctx:ctx(), binary(), binary(), kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_persistent_volume_claim(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified PersistentVolumeClaim
-spec replace_namespaced_persistent_volume_claim_status(ctx:ctx(), binary(), binary(), kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_persistent_volume_claim_status(ctx:ctx(), binary(), binary(), kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), maps:map()) -> {ok, kuberl_v1_persistent_volume_claim:kuberl_v1_persistent_volume_claim(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_persistent_volume_claim_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/persistentvolumeclaims/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Pod
-spec replace_namespaced_pod(ctx:ctx(), binary(), binary(), kuberl_v1_pod:kuberl_v1_pod()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod(Ctx, Name, Namespace, Body) ->
    replace_namespaced_pod(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_pod(ctx:ctx(), binary(), binary(), kuberl_v1_pod:kuberl_v1_pod(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified Pod
-spec replace_namespaced_pod_status(ctx:ctx(), binary(), binary(), kuberl_v1_pod:kuberl_v1_pod()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_pod_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_pod_status(ctx:ctx(), binary(), binary(), kuberl_v1_pod:kuberl_v1_pod(), maps:map()) -> {ok, kuberl_v1_pod:kuberl_v1_pod(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/pods/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified PodTemplate
-spec replace_namespaced_pod_template(ctx:ctx(), binary(), binary(), kuberl_v1_pod_template:kuberl_v1_pod_template()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_template(Ctx, Name, Namespace, Body) ->
    replace_namespaced_pod_template(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_pod_template(ctx:ctx(), binary(), binary(), kuberl_v1_pod_template:kuberl_v1_pod_template(), maps:map()) -> {ok, kuberl_v1_pod_template:kuberl_v1_pod_template(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_template(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/podtemplates/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified ReplicationController
-spec replace_namespaced_replication_controller(ctx:ctx(), binary(), binary(), kuberl_v1_replication_controller:kuberl_v1_replication_controller()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replication_controller(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replication_controller(ctx:ctx(), binary(), binary(), kuberl_v1_replication_controller:kuberl_v1_replication_controller(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace scale of the specified ReplicationController
-spec replace_namespaced_replication_controller_scale(ctx:ctx(), binary(), binary(), kuberl_v1_scale:kuberl_v1_scale()) -> {ok, kuberl_v1_scale:kuberl_v1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller_scale(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replication_controller_scale(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replication_controller_scale(ctx:ctx(), binary(), binary(), kuberl_v1_scale:kuberl_v1_scale(), maps:map()) -> {ok, kuberl_v1_scale:kuberl_v1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified ReplicationController
-spec replace_namespaced_replication_controller_status(ctx:ctx(), binary(), binary(), kuberl_v1_replication_controller:kuberl_v1_replication_controller()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replication_controller_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replication_controller_status(ctx:ctx(), binary(), binary(), kuberl_v1_replication_controller:kuberl_v1_replication_controller(), maps:map()) -> {ok, kuberl_v1_replication_controller:kuberl_v1_replication_controller(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified ResourceQuota
-spec replace_namespaced_resource_quota(ctx:ctx(), binary(), binary(), kuberl_v1_resource_quota:kuberl_v1_resource_quota()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_resource_quota(Ctx, Name, Namespace, Body) ->
    replace_namespaced_resource_quota(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_resource_quota(ctx:ctx(), binary(), binary(), kuberl_v1_resource_quota:kuberl_v1_resource_quota(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_resource_quota(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified ResourceQuota
-spec replace_namespaced_resource_quota_status(ctx:ctx(), binary(), binary(), kuberl_v1_resource_quota:kuberl_v1_resource_quota()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_resource_quota_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_resource_quota_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_resource_quota_status(ctx:ctx(), binary(), binary(), kuberl_v1_resource_quota:kuberl_v1_resource_quota(), maps:map()) -> {ok, kuberl_v1_resource_quota:kuberl_v1_resource_quota(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_resource_quota_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/resourcequotas/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Secret
-spec replace_namespaced_secret(ctx:ctx(), binary(), binary(), kuberl_v1_secret:kuberl_v1_secret()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_secret(Ctx, Name, Namespace, Body) ->
    replace_namespaced_secret(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_secret(ctx:ctx(), binary(), binary(), kuberl_v1_secret:kuberl_v1_secret(), maps:map()) -> {ok, kuberl_v1_secret:kuberl_v1_secret(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_secret(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/secrets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Service
-spec replace_namespaced_service(ctx:ctx(), binary(), binary(), kuberl_v1_service:kuberl_v1_service()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_service(Ctx, Name, Namespace, Body) ->
    replace_namespaced_service(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_service(ctx:ctx(), binary(), binary(), kuberl_v1_service:kuberl_v1_service(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_service(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified ServiceAccount
-spec replace_namespaced_service_account(ctx:ctx(), binary(), binary(), kuberl_v1_service_account:kuberl_v1_service_account()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_service_account(Ctx, Name, Namespace, Body) ->
    replace_namespaced_service_account(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_service_account(ctx:ctx(), binary(), binary(), kuberl_v1_service_account:kuberl_v1_service_account(), maps:map()) -> {ok, kuberl_v1_service_account:kuberl_v1_service_account(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_service_account(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/serviceaccounts/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified Service
-spec replace_namespaced_service_status(ctx:ctx(), binary(), binary(), kuberl_v1_service:kuberl_v1_service()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_service_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_service_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_service_status(ctx:ctx(), binary(), binary(), kuberl_v1_service:kuberl_v1_service(), maps:map()) -> {ok, kuberl_v1_service:kuberl_v1_service(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_service_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/namespaces/", Namespace, "/services/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Node
-spec replace_node(ctx:ctx(), binary(), kuberl_v1_node:kuberl_v1_node()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_node(Ctx, Name, Body) ->
    replace_node(Ctx, Name, Body, #{}).

-spec replace_node(ctx:ctx(), binary(), kuberl_v1_node:kuberl_v1_node(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_node(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/nodes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified Node
-spec replace_node_status(ctx:ctx(), binary(), kuberl_v1_node:kuberl_v1_node()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_node_status(Ctx, Name, Body) ->
    replace_node_status(Ctx, Name, Body, #{}).

-spec replace_node_status(ctx:ctx(), binary(), kuberl_v1_node:kuberl_v1_node(), maps:map()) -> {ok, kuberl_v1_node:kuberl_v1_node(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_node_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/nodes/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified PersistentVolume
-spec replace_persistent_volume(ctx:ctx(), binary(), kuberl_v1_persistent_volume:kuberl_v1_persistent_volume()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_persistent_volume(Ctx, Name, Body) ->
    replace_persistent_volume(Ctx, Name, Body, #{}).

-spec replace_persistent_volume(ctx:ctx(), binary(), kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_persistent_volume(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/persistentvolumes/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified PersistentVolume
-spec replace_persistent_volume_status(ctx:ctx(), binary(), kuberl_v1_persistent_volume:kuberl_v1_persistent_volume()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_persistent_volume_status(Ctx, Name, Body) ->
    replace_persistent_volume_status(Ctx, Name, Body, #{}).

-spec replace_persistent_volume_status(ctx:ctx(), binary(), kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), maps:map()) -> {ok, kuberl_v1_persistent_volume:kuberl_v1_persistent_volume(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_persistent_volume_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/api/v1/persistentvolumes/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).


