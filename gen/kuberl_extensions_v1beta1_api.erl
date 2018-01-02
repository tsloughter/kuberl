-module(kuberl_extensions_v1beta1_api).

-export([create_namespaced_daemon_set/3, create_namespaced_daemon_set/4,
         create_namespaced_deployment/3, create_namespaced_deployment/4,
         create_namespaced_deployment_rollback/4, create_namespaced_deployment_rollback/5,
         create_namespaced_ingress/3, create_namespaced_ingress/4,
         create_namespaced_network_policy/3, create_namespaced_network_policy/4,
         create_namespaced_replica_set/3, create_namespaced_replica_set/4,
         create_pod_security_policy/2, create_pod_security_policy/3,
         delete_collection_namespaced_daemon_set/2, delete_collection_namespaced_daemon_set/3,
         delete_collection_namespaced_deployment/2, delete_collection_namespaced_deployment/3,
         delete_collection_namespaced_ingress/2, delete_collection_namespaced_ingress/3,
         delete_collection_namespaced_network_policy/2, delete_collection_namespaced_network_policy/3,
         delete_collection_namespaced_replica_set/2, delete_collection_namespaced_replica_set/3,
         delete_collection_pod_security_policy/1, delete_collection_pod_security_policy/2,
         delete_namespaced_daemon_set/4, delete_namespaced_daemon_set/5,
         delete_namespaced_deployment/4, delete_namespaced_deployment/5,
         delete_namespaced_ingress/4, delete_namespaced_ingress/5,
         delete_namespaced_network_policy/4, delete_namespaced_network_policy/5,
         delete_namespaced_replica_set/4, delete_namespaced_replica_set/5,
         delete_pod_security_policy/3, delete_pod_security_policy/4,
         get_api_resources/1, get_api_resources/2,
         list_daemon_set_for_all_namespaces/1, list_daemon_set_for_all_namespaces/2,
         list_deployment_for_all_namespaces/1, list_deployment_for_all_namespaces/2,
         list_ingress_for_all_namespaces/1, list_ingress_for_all_namespaces/2,
         list_namespaced_daemon_set/2, list_namespaced_daemon_set/3,
         list_namespaced_deployment/2, list_namespaced_deployment/3,
         list_namespaced_ingress/2, list_namespaced_ingress/3,
         list_namespaced_network_policy/2, list_namespaced_network_policy/3,
         list_namespaced_replica_set/2, list_namespaced_replica_set/3,
         list_network_policy_for_all_namespaces/1, list_network_policy_for_all_namespaces/2,
         list_pod_security_policy/1, list_pod_security_policy/2,
         list_replica_set_for_all_namespaces/1, list_replica_set_for_all_namespaces/2,
         patch_namespaced_daemon_set/4, patch_namespaced_daemon_set/5,
         patch_namespaced_daemon_set_status/4, patch_namespaced_daemon_set_status/5,
         patch_namespaced_deployment/4, patch_namespaced_deployment/5,
         patch_namespaced_deployment_scale/4, patch_namespaced_deployment_scale/5,
         patch_namespaced_deployment_status/4, patch_namespaced_deployment_status/5,
         patch_namespaced_ingress/4, patch_namespaced_ingress/5,
         patch_namespaced_ingress_status/4, patch_namespaced_ingress_status/5,
         patch_namespaced_network_policy/4, patch_namespaced_network_policy/5,
         patch_namespaced_replica_set/4, patch_namespaced_replica_set/5,
         patch_namespaced_replica_set_scale/4, patch_namespaced_replica_set_scale/5,
         patch_namespaced_replica_set_status/4, patch_namespaced_replica_set_status/5,
         patch_namespaced_replication_controller_dummy_scale/4, patch_namespaced_replication_controller_dummy_scale/5,
         patch_pod_security_policy/3, patch_pod_security_policy/4,
         read_namespaced_daemon_set/3, read_namespaced_daemon_set/4,
         read_namespaced_daemon_set_status/3, read_namespaced_daemon_set_status/4,
         read_namespaced_deployment/3, read_namespaced_deployment/4,
         read_namespaced_deployment_scale/3, read_namespaced_deployment_scale/4,
         read_namespaced_deployment_status/3, read_namespaced_deployment_status/4,
         read_namespaced_ingress/3, read_namespaced_ingress/4,
         read_namespaced_ingress_status/3, read_namespaced_ingress_status/4,
         read_namespaced_network_policy/3, read_namespaced_network_policy/4,
         read_namespaced_replica_set/3, read_namespaced_replica_set/4,
         read_namespaced_replica_set_scale/3, read_namespaced_replica_set_scale/4,
         read_namespaced_replica_set_status/3, read_namespaced_replica_set_status/4,
         read_namespaced_replication_controller_dummy_scale/3, read_namespaced_replication_controller_dummy_scale/4,
         read_pod_security_policy/2, read_pod_security_policy/3,
         replace_namespaced_daemon_set/4, replace_namespaced_daemon_set/5,
         replace_namespaced_daemon_set_status/4, replace_namespaced_daemon_set_status/5,
         replace_namespaced_deployment/4, replace_namespaced_deployment/5,
         replace_namespaced_deployment_scale/4, replace_namespaced_deployment_scale/5,
         replace_namespaced_deployment_status/4, replace_namespaced_deployment_status/5,
         replace_namespaced_ingress/4, replace_namespaced_ingress/5,
         replace_namespaced_ingress_status/4, replace_namespaced_ingress_status/5,
         replace_namespaced_network_policy/4, replace_namespaced_network_policy/5,
         replace_namespaced_replica_set/4, replace_namespaced_replica_set/5,
         replace_namespaced_replica_set_scale/4, replace_namespaced_replica_set_scale/5,
         replace_namespaced_replica_set_status/4, replace_namespaced_replica_set_status/5,
         replace_namespaced_replication_controller_dummy_scale/4, replace_namespaced_replication_controller_dummy_scale/5,
         replace_pod_security_policy/3, replace_pod_security_policy/4]).

-define(BASE_URL, "").

%% @doc 
%% create a DaemonSet
-spec create_namespaced_daemon_set(ctx:ctx(), binary(), kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_daemon_set(Ctx, Namespace, Body) ->
    create_namespaced_daemon_set(Ctx, Namespace, Body, #{}).

-spec create_namespaced_daemon_set(ctx:ctx(), binary(), kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_daemon_set(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a Deployment
-spec create_namespaced_deployment(ctx:ctx(), binary(), kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_deployment(Ctx, Namespace, Body) ->
    create_namespaced_deployment(Ctx, Namespace, Body, #{}).

-spec create_namespaced_deployment(ctx:ctx(), binary(), kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_deployment(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create rollback of a Deployment
-spec create_namespaced_deployment_rollback(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_deployment_rollback:kuberl_extensions_v1beta1_deployment_rollback()) -> {ok, kuberl_extensions_v1beta1_deployment_rollback:kuberl_extensions_v1beta1_deployment_rollback(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_deployment_rollback(Ctx, Name, Namespace, Body) ->
    create_namespaced_deployment_rollback(Ctx, Name, Namespace, Body, #{}).

-spec create_namespaced_deployment_rollback(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_deployment_rollback:kuberl_extensions_v1beta1_deployment_rollback(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment_rollback:kuberl_extensions_v1beta1_deployment_rollback(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_deployment_rollback(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, "/rollback"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create an Ingress
-spec create_namespaced_ingress(ctx:ctx(), binary(), kuberl_v1beta1_ingress:kuberl_v1beta1_ingress()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_ingress(Ctx, Namespace, Body) ->
    create_namespaced_ingress(Ctx, Namespace, Body, #{}).

-spec create_namespaced_ingress(ctx:ctx(), binary(), kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_ingress(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a NetworkPolicy
-spec create_namespaced_network_policy(ctx:ctx(), binary(), kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_network_policy(Ctx, Namespace, Body) ->
    create_namespaced_network_policy(Ctx, Namespace, Body, #{}).

-spec create_namespaced_network_policy(ctx:ctx(), binary(), kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), maps:map()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_network_policy(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a ReplicaSet
-spec create_namespaced_replica_set(ctx:ctx(), binary(), kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_replica_set(Ctx, Namespace, Body) ->
    create_namespaced_replica_set(Ctx, Namespace, Body, #{}).

-spec create_namespaced_replica_set(ctx:ctx(), binary(), kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_replica_set(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a PodSecurityPolicy
-spec create_pod_security_policy(ctx:ctx(), kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_pod_security_policy(Ctx, Body) ->
    create_pod_security_policy(Ctx, Body, #{}).

-spec create_pod_security_policy(ctx:ctx(), kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), maps:map()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_pod_security_policy(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/extensions/v1beta1/podsecuritypolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of DaemonSet
-spec delete_collection_namespaced_daemon_set(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_daemon_set(Ctx, Namespace) ->
    delete_collection_namespaced_daemon_set(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_daemon_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_daemon_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of Deployment
-spec delete_collection_namespaced_deployment(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_deployment(Ctx, Namespace) ->
    delete_collection_namespaced_deployment(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_deployment(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_deployment(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of Ingress
-spec delete_collection_namespaced_ingress(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_ingress(Ctx, Namespace) ->
    delete_collection_namespaced_ingress(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_ingress(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_ingress(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
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
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of ReplicaSet
-spec delete_collection_namespaced_replica_set(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_replica_set(Ctx, Namespace) ->
    delete_collection_namespaced_replica_set(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_replica_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_replica_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of PodSecurityPolicy
-spec delete_collection_pod_security_policy(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_pod_security_policy(Ctx) ->
    delete_collection_pod_security_policy(Ctx, #{}).

-spec delete_collection_pod_security_policy(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_pod_security_policy(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/podsecuritypolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a DaemonSet
-spec delete_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_daemon_set(Ctx, Name, Namespace, Body) ->
    delete_namespaced_daemon_set(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_daemon_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a Deployment
-spec delete_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_deployment(Ctx, Name, Namespace, Body) ->
    delete_namespaced_deployment(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_deployment(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete an Ingress
-spec delete_namespaced_ingress(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_ingress(Ctx, Name, Namespace, Body) ->
    delete_namespaced_ingress(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_ingress(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_ingress(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
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
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a ReplicaSet
-spec delete_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_replica_set(Ctx, Name, Namespace, Body) ->
    delete_namespaced_replica_set(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_replica_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a PodSecurityPolicy
-spec delete_pod_security_policy(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_pod_security_policy(Ctx, Name, Body) ->
    delete_pod_security_policy(Ctx, Name, Body, #{}).

-spec delete_pod_security_policy(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_pod_security_policy(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/extensions/v1beta1/podsecuritypolicies/", Name, ""],
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
    Path = ["/apis/extensions/v1beta1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind DaemonSet
-spec list_daemon_set_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta1_daemon_set_list:kuberl_v1beta1_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_daemon_set_for_all_namespaces(Ctx) ->
    list_daemon_set_for_all_namespaces(Ctx, #{}).

-spec list_daemon_set_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set_list:kuberl_v1beta1_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_daemon_set_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind Deployment
-spec list_deployment_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_extensions_v1beta1_deployment_list:kuberl_extensions_v1beta1_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_deployment_for_all_namespaces(Ctx) ->
    list_deployment_for_all_namespaces(Ctx, #{}).

-spec list_deployment_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment_list:kuberl_extensions_v1beta1_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_deployment_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind Ingress
-spec list_ingress_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta1_ingress_list:kuberl_v1beta1_ingress_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_ingress_for_all_namespaces(Ctx) ->
    list_ingress_for_all_namespaces(Ctx, #{}).

-spec list_ingress_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_ingress_list:kuberl_v1beta1_ingress_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_ingress_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/ingresses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind DaemonSet
-spec list_namespaced_daemon_set(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_daemon_set_list:kuberl_v1beta1_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_daemon_set(Ctx, Namespace) ->
    list_namespaced_daemon_set(Ctx, Namespace, #{}).

-spec list_namespaced_daemon_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set_list:kuberl_v1beta1_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_daemon_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind Deployment
-spec list_namespaced_deployment(ctx:ctx(), binary()) -> {ok, kuberl_extensions_v1beta1_deployment_list:kuberl_extensions_v1beta1_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_deployment(Ctx, Namespace) ->
    list_namespaced_deployment(Ctx, Namespace, #{}).

-spec list_namespaced_deployment(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment_list:kuberl_extensions_v1beta1_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_deployment(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind Ingress
-spec list_namespaced_ingress(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_ingress_list:kuberl_v1beta1_ingress_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_ingress(Ctx, Namespace) ->
    list_namespaced_ingress(Ctx, Namespace, #{}).

-spec list_namespaced_ingress(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_ingress_list:kuberl_v1beta1_ingress_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_ingress(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind NetworkPolicy
-spec list_namespaced_network_policy(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_network_policy_list:kuberl_v1beta1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_network_policy(Ctx, Namespace) ->
    list_namespaced_network_policy(Ctx, Namespace, #{}).

-spec list_namespaced_network_policy(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_network_policy_list:kuberl_v1beta1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_network_policy(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind ReplicaSet
-spec list_namespaced_replica_set(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_replica_set_list:kuberl_v1beta1_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_replica_set(Ctx, Namespace) ->
    list_namespaced_replica_set(Ctx, Namespace, #{}).

-spec list_namespaced_replica_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_replica_set_list:kuberl_v1beta1_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_replica_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind NetworkPolicy
-spec list_network_policy_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta1_network_policy_list:kuberl_v1beta1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_network_policy_for_all_namespaces(Ctx) ->
    list_network_policy_for_all_namespaces(Ctx, #{}).

-spec list_network_policy_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_network_policy_list:kuberl_v1beta1_network_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_network_policy_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/networkpolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind PodSecurityPolicy
-spec list_pod_security_policy(ctx:ctx()) -> {ok, kuberl_v1beta1_pod_security_policy_list:kuberl_v1beta1_pod_security_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_security_policy(Ctx) ->
    list_pod_security_policy(Ctx, #{}).

-spec list_pod_security_policy(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_pod_security_policy_list:kuberl_v1beta1_pod_security_policy_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_security_policy(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/podsecuritypolicies"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind ReplicaSet
-spec list_replica_set_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta1_replica_set_list:kuberl_v1beta1_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_replica_set_for_all_namespaces(Ctx) ->
    list_replica_set_for_all_namespaces(Ctx, #{}).

-spec list_replica_set_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_replica_set_list:kuberl_v1beta1_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_replica_set_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified DaemonSet
-spec patch_namespaced_daemon_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set(Ctx, Name, Namespace, Body) ->
    patch_namespaced_daemon_set(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_daemon_set(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update status of the specified DaemonSet
-spec patch_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified Deployment
-spec patch_namespaced_deployment(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment(Ctx, Name, Namespace, Body) ->
    patch_namespaced_deployment(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_deployment(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update scale of the specified Deployment
-spec patch_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_scale(Ctx, Name, Namespace, Body) ->
    patch_namespaced_deployment_scale(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update status of the specified Deployment
-spec patch_namespaced_deployment_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_deployment_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_deployment_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified Ingress
-spec patch_namespaced_ingress(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_ingress(Ctx, Name, Namespace, Body) ->
    patch_namespaced_ingress(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_ingress(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_ingress(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update status of the specified Ingress
-spec patch_namespaced_ingress_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_ingress_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_ingress_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_ingress_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_ingress_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified NetworkPolicy
-spec patch_namespaced_network_policy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_network_policy(Ctx, Name, Namespace, Body) ->
    patch_namespaced_network_policy(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_network_policy(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_network_policy(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified ReplicaSet
-spec patch_namespaced_replica_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replica_set(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replica_set(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update scale of the specified ReplicaSet
-spec patch_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_scale(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update status of the specified ReplicaSet
-spec patch_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replica_set_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update scale of the specified ReplicationControllerDummy
-spec patch_namespaced_replication_controller_dummy_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replication_controller_dummy_scale(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified PodSecurityPolicy
-spec patch_pod_security_policy(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_pod_security_policy(Ctx, Name, Body) ->
    patch_pod_security_policy(Ctx, Name, Body, #{}).

-spec patch_pod_security_policy(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_pod_security_policy(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/extensions/v1beta1/podsecuritypolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified DaemonSet
-spec read_namespaced_daemon_set(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set(Ctx, Name, Namespace) ->
    read_namespaced_daemon_set(Ctx, Name, Namespace, #{}).

-spec read_namespaced_daemon_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read status of the specified DaemonSet
-spec read_namespaced_daemon_set_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set_status(Ctx, Name, Namespace) ->
    read_namespaced_daemon_set_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified Deployment
-spec read_namespaced_deployment(ctx:ctx(), binary(), binary()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment(Ctx, Name, Namespace) ->
    read_namespaced_deployment(Ctx, Name, Namespace, #{}).

-spec read_namespaced_deployment(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read scale of the specified Deployment
-spec read_namespaced_deployment_scale(ctx:ctx(), binary(), binary()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_scale(Ctx, Name, Namespace) ->
    read_namespaced_deployment_scale(Ctx, Name, Namespace, #{}).

-spec read_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_scale(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read status of the specified Deployment
-spec read_namespaced_deployment_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_status(Ctx, Name, Namespace) ->
    read_namespaced_deployment_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_deployment_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified Ingress
-spec read_namespaced_ingress(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_ingress(Ctx, Name, Namespace) ->
    read_namespaced_ingress(Ctx, Name, Namespace, #{}).

-spec read_namespaced_ingress(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_ingress(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read status of the specified Ingress
-spec read_namespaced_ingress_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_ingress_status(Ctx, Name, Namespace) ->
    read_namespaced_ingress_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_ingress_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_ingress_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified NetworkPolicy
-spec read_namespaced_network_policy(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_network_policy(Ctx, Name, Namespace) ->
    read_namespaced_network_policy(Ctx, Name, Namespace, #{}).

-spec read_namespaced_network_policy(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_network_policy(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified ReplicaSet
-spec read_namespaced_replica_set(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set(Ctx, Name, Namespace) ->
    read_namespaced_replica_set(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replica_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read scale of the specified ReplicaSet
-spec read_namespaced_replica_set_scale(ctx:ctx(), binary(), binary()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_scale(Ctx, Name, Namespace) ->
    read_namespaced_replica_set_scale(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_scale(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read status of the specified ReplicaSet
-spec read_namespaced_replica_set_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_status(Ctx, Name, Namespace) ->
    read_namespaced_replica_set_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read scale of the specified ReplicationControllerDummy
-spec read_namespaced_replication_controller_dummy_scale(ctx:ctx(), binary(), binary()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace) ->
    read_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replication_controller_dummy_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified PodSecurityPolicy
-spec read_pod_security_policy(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_pod_security_policy(Ctx, Name) ->
    read_pod_security_policy(Ctx, Name, #{}).

-spec read_pod_security_policy(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_pod_security_policy(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/extensions/v1beta1/podsecuritypolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified DaemonSet
-spec replace_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set(Ctx, Name, Namespace, Body) ->
    replace_namespaced_daemon_set(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace status of the specified DaemonSet
-spec replace_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), maps:map()) -> {ok, kuberl_v1beta1_daemon_set:kuberl_v1beta1_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/daemonsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified Deployment
-spec replace_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment(Ctx, Name, Namespace, Body) ->
    replace_namespaced_deployment(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace scale of the specified Deployment
-spec replace_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_scale(Ctx, Name, Namespace, Body) ->
    replace_namespaced_deployment_scale(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace status of the specified Deployment
-spec replace_namespaced_deployment_status(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_deployment_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_deployment_status(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), maps:map()) -> {ok, kuberl_extensions_v1beta1_deployment:kuberl_extensions_v1beta1_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/deployments/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified Ingress
-spec replace_namespaced_ingress(ctx:ctx(), binary(), binary(), kuberl_v1beta1_ingress:kuberl_v1beta1_ingress()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_ingress(Ctx, Name, Namespace, Body) ->
    replace_namespaced_ingress(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_ingress(ctx:ctx(), binary(), binary(), kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_ingress(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace status of the specified Ingress
-spec replace_namespaced_ingress_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_ingress:kuberl_v1beta1_ingress()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_ingress_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_ingress_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_ingress_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), maps:map()) -> {ok, kuberl_v1beta1_ingress:kuberl_v1beta1_ingress(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_ingress_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/ingresses/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified NetworkPolicy
-spec replace_namespaced_network_policy(ctx:ctx(), binary(), binary(), kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_network_policy(Ctx, Name, Namespace, Body) ->
    replace_namespaced_network_policy(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_network_policy(ctx:ctx(), binary(), binary(), kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), maps:map()) -> {ok, kuberl_v1beta1_network_policy:kuberl_v1beta1_network_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_network_policy(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/networkpolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified ReplicaSet
-spec replace_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replica_set(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace scale of the specified ReplicaSet
-spec replace_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_scale(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace status of the specified ReplicaSet
-spec replace_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replica_set_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), maps:map()) -> {ok, kuberl_v1beta1_replica_set:kuberl_v1beta1_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicasets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace scale of the specified ReplicationControllerDummy
-spec replace_namespaced_replication_controller_dummy_scale(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replication_controller_dummy_scale(ctx:ctx(), binary(), binary(), kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), maps:map()) -> {ok, kuberl_extensions_v1beta1_scale:kuberl_extensions_v1beta1_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replication_controller_dummy_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/namespaces/", Namespace, "/replicationcontrollers/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified PodSecurityPolicy
-spec replace_pod_security_policy(ctx:ctx(), binary(), kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_pod_security_policy(Ctx, Name, Body) ->
    replace_pod_security_policy(Ctx, Name, Body, #{}).

-spec replace_pod_security_policy(ctx:ctx(), binary(), kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), maps:map()) -> {ok, kuberl_v1beta1_pod_security_policy:kuberl_v1beta1_pod_security_policy(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_pod_security_policy(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/extensions/v1beta1/podsecuritypolicies/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


