-module(kuberl_apps_v1beta2_api).

-export([create_namespaced_controller_revision/3, create_namespaced_controller_revision/4,
         create_namespaced_daemon_set/3, create_namespaced_daemon_set/4,
         create_namespaced_deployment/3, create_namespaced_deployment/4,
         create_namespaced_replica_set/3, create_namespaced_replica_set/4,
         create_namespaced_stateful_set/3, create_namespaced_stateful_set/4,
         delete_collection_namespaced_controller_revision/2, delete_collection_namespaced_controller_revision/3,
         delete_collection_namespaced_daemon_set/2, delete_collection_namespaced_daemon_set/3,
         delete_collection_namespaced_deployment/2, delete_collection_namespaced_deployment/3,
         delete_collection_namespaced_replica_set/2, delete_collection_namespaced_replica_set/3,
         delete_collection_namespaced_stateful_set/2, delete_collection_namespaced_stateful_set/3,
         delete_namespaced_controller_revision/4, delete_namespaced_controller_revision/5,
         delete_namespaced_daemon_set/4, delete_namespaced_daemon_set/5,
         delete_namespaced_deployment/4, delete_namespaced_deployment/5,
         delete_namespaced_replica_set/4, delete_namespaced_replica_set/5,
         delete_namespaced_stateful_set/4, delete_namespaced_stateful_set/5,
         get_api_resources/1, get_api_resources/2,
         list_controller_revision_for_all_namespaces/1, list_controller_revision_for_all_namespaces/2,
         list_daemon_set_for_all_namespaces/1, list_daemon_set_for_all_namespaces/2,
         list_deployment_for_all_namespaces/1, list_deployment_for_all_namespaces/2,
         list_namespaced_controller_revision/2, list_namespaced_controller_revision/3,
         list_namespaced_daemon_set/2, list_namespaced_daemon_set/3,
         list_namespaced_deployment/2, list_namespaced_deployment/3,
         list_namespaced_replica_set/2, list_namespaced_replica_set/3,
         list_namespaced_stateful_set/2, list_namespaced_stateful_set/3,
         list_replica_set_for_all_namespaces/1, list_replica_set_for_all_namespaces/2,
         list_stateful_set_for_all_namespaces/1, list_stateful_set_for_all_namespaces/2,
         patch_namespaced_controller_revision/4, patch_namespaced_controller_revision/5,
         patch_namespaced_daemon_set/4, patch_namespaced_daemon_set/5,
         patch_namespaced_daemon_set_status/4, patch_namespaced_daemon_set_status/5,
         patch_namespaced_deployment/4, patch_namespaced_deployment/5,
         patch_namespaced_deployment_scale/4, patch_namespaced_deployment_scale/5,
         patch_namespaced_deployment_status/4, patch_namespaced_deployment_status/5,
         patch_namespaced_replica_set/4, patch_namespaced_replica_set/5,
         patch_namespaced_replica_set_scale/4, patch_namespaced_replica_set_scale/5,
         patch_namespaced_replica_set_status/4, patch_namespaced_replica_set_status/5,
         patch_namespaced_stateful_set/4, patch_namespaced_stateful_set/5,
         patch_namespaced_stateful_set_scale/4, patch_namespaced_stateful_set_scale/5,
         patch_namespaced_stateful_set_status/4, patch_namespaced_stateful_set_status/5,
         read_namespaced_controller_revision/3, read_namespaced_controller_revision/4,
         read_namespaced_daemon_set/3, read_namespaced_daemon_set/4,
         read_namespaced_daemon_set_status/3, read_namespaced_daemon_set_status/4,
         read_namespaced_deployment/3, read_namespaced_deployment/4,
         read_namespaced_deployment_scale/3, read_namespaced_deployment_scale/4,
         read_namespaced_deployment_status/3, read_namespaced_deployment_status/4,
         read_namespaced_replica_set/3, read_namespaced_replica_set/4,
         read_namespaced_replica_set_scale/3, read_namespaced_replica_set_scale/4,
         read_namespaced_replica_set_status/3, read_namespaced_replica_set_status/4,
         read_namespaced_stateful_set/3, read_namespaced_stateful_set/4,
         read_namespaced_stateful_set_scale/3, read_namespaced_stateful_set_scale/4,
         read_namespaced_stateful_set_status/3, read_namespaced_stateful_set_status/4,
         replace_namespaced_controller_revision/4, replace_namespaced_controller_revision/5,
         replace_namespaced_daemon_set/4, replace_namespaced_daemon_set/5,
         replace_namespaced_daemon_set_status/4, replace_namespaced_daemon_set_status/5,
         replace_namespaced_deployment/4, replace_namespaced_deployment/5,
         replace_namespaced_deployment_scale/4, replace_namespaced_deployment_scale/5,
         replace_namespaced_deployment_status/4, replace_namespaced_deployment_status/5,
         replace_namespaced_replica_set/4, replace_namespaced_replica_set/5,
         replace_namespaced_replica_set_scale/4, replace_namespaced_replica_set_scale/5,
         replace_namespaced_replica_set_status/4, replace_namespaced_replica_set_status/5,
         replace_namespaced_stateful_set/4, replace_namespaced_stateful_set/5,
         replace_namespaced_stateful_set_scale/4, replace_namespaced_stateful_set_scale/5,
         replace_namespaced_stateful_set_status/4, replace_namespaced_stateful_set_status/5]).

-define(BASE_URL, "").

%% @doc 
%% create a ControllerRevision
-spec create_namespaced_controller_revision(ctx:ctx(), binary(), kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_controller_revision(Ctx, Namespace, Body) ->
    create_namespaced_controller_revision(Ctx, Namespace, Body, #{}).

-spec create_namespaced_controller_revision(ctx:ctx(), binary(), kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), maps:map()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_controller_revision(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/controllerrevisions"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a DaemonSet
-spec create_namespaced_daemon_set(ctx:ctx(), binary(), kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_daemon_set(Ctx, Namespace, Body) ->
    create_namespaced_daemon_set(Ctx, Namespace, Body, #{}).

-spec create_namespaced_daemon_set(ctx:ctx(), binary(), kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_daemon_set(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a Deployment
-spec create_namespaced_deployment(ctx:ctx(), binary(), kuberl_v1beta2_deployment:kuberl_v1beta2_deployment()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_deployment(Ctx, Namespace, Body) ->
    create_namespaced_deployment(Ctx, Namespace, Body, #{}).

-spec create_namespaced_deployment(ctx:ctx(), binary(), kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_deployment(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a ReplicaSet
-spec create_namespaced_replica_set(ctx:ctx(), binary(), kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_replica_set(Ctx, Namespace, Body) ->
    create_namespaced_replica_set(Ctx, Namespace, Body, #{}).

-spec create_namespaced_replica_set(ctx:ctx(), binary(), kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_replica_set(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% create a StatefulSet
-spec create_namespaced_stateful_set(ctx:ctx(), binary(), kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_stateful_set(Ctx, Namespace, Body) ->
    create_namespaced_stateful_set(Ctx, Namespace, Body, #{}).

-spec create_namespaced_stateful_set(ctx:ctx(), binary(), kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_stateful_set(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of ControllerRevision
-spec delete_collection_namespaced_controller_revision(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_controller_revision(Ctx, Namespace) ->
    delete_collection_namespaced_controller_revision(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_controller_revision(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_controller_revision(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/controllerrevisions"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of DaemonSet
-spec delete_collection_namespaced_daemon_set(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_daemon_set(Ctx, Namespace) ->
    delete_collection_namespaced_daemon_set(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_daemon_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_daemon_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of Deployment
-spec delete_collection_namespaced_deployment(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_deployment(Ctx, Namespace) ->
    delete_collection_namespaced_deployment(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_deployment(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_deployment(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of ReplicaSet
-spec delete_collection_namespaced_replica_set(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_replica_set(Ctx, Namespace) ->
    delete_collection_namespaced_replica_set(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_replica_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_replica_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of StatefulSet
-spec delete_collection_namespaced_stateful_set(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_stateful_set(Ctx, Namespace) ->
    delete_collection_namespaced_stateful_set(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_stateful_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_stateful_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a ControllerRevision
-spec delete_namespaced_controller_revision(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_controller_revision(Ctx, Name, Namespace, Body) ->
    delete_namespaced_controller_revision(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_controller_revision(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_controller_revision(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/controllerrevisions/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a DaemonSet
-spec delete_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_daemon_set(Ctx, Name, Namespace, Body) ->
    delete_namespaced_daemon_set(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_daemon_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a Deployment
-spec delete_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_deployment(Ctx, Name, Namespace, Body) ->
    delete_namespaced_deployment(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_deployment(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a ReplicaSet
-spec delete_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_replica_set(Ctx, Name, Namespace, Body) ->
    delete_namespaced_replica_set(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_replica_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a StatefulSet
-spec delete_namespaced_stateful_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_stateful_set(Ctx, Name, Namespace, Body) ->
    delete_namespaced_stateful_set(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_stateful_set(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_stateful_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, ""],
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
    Path = ["/apis/apps/v1beta2/"],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ControllerRevision
-spec list_controller_revision_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta2_controller_revision_list:kuberl_v1beta2_controller_revision_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_controller_revision_for_all_namespaces(Ctx) ->
    list_controller_revision_for_all_namespaces(Ctx, #{}).

-spec list_controller_revision_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta2_controller_revision_list:kuberl_v1beta2_controller_revision_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_controller_revision_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/controllerrevisions"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind DaemonSet
-spec list_daemon_set_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta2_daemon_set_list:kuberl_v1beta2_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_daemon_set_for_all_namespaces(Ctx) ->
    list_daemon_set_for_all_namespaces(Ctx, #{}).

-spec list_daemon_set_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set_list:kuberl_v1beta2_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_daemon_set_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Deployment
-spec list_deployment_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta2_deployment_list:kuberl_v1beta2_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_deployment_for_all_namespaces(Ctx) ->
    list_deployment_for_all_namespaces(Ctx, #{}).

-spec list_deployment_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta2_deployment_list:kuberl_v1beta2_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_deployment_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ControllerRevision
-spec list_namespaced_controller_revision(ctx:ctx(), binary()) -> {ok, kuberl_v1beta2_controller_revision_list:kuberl_v1beta2_controller_revision_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_controller_revision(Ctx, Namespace) ->
    list_namespaced_controller_revision(Ctx, Namespace, #{}).

-spec list_namespaced_controller_revision(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta2_controller_revision_list:kuberl_v1beta2_controller_revision_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_controller_revision(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/controllerrevisions"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind DaemonSet
-spec list_namespaced_daemon_set(ctx:ctx(), binary()) -> {ok, kuberl_v1beta2_daemon_set_list:kuberl_v1beta2_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_daemon_set(Ctx, Namespace) ->
    list_namespaced_daemon_set(Ctx, Namespace, #{}).

-spec list_namespaced_daemon_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set_list:kuberl_v1beta2_daemon_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_daemon_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind Deployment
-spec list_namespaced_deployment(ctx:ctx(), binary()) -> {ok, kuberl_v1beta2_deployment_list:kuberl_v1beta2_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_deployment(Ctx, Namespace) ->
    list_namespaced_deployment(Ctx, Namespace, #{}).

-spec list_namespaced_deployment(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta2_deployment_list:kuberl_v1beta2_deployment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_deployment(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ReplicaSet
-spec list_namespaced_replica_set(ctx:ctx(), binary()) -> {ok, kuberl_v1beta2_replica_set_list:kuberl_v1beta2_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_replica_set(Ctx, Namespace) ->
    list_namespaced_replica_set(Ctx, Namespace, #{}).

-spec list_namespaced_replica_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta2_replica_set_list:kuberl_v1beta2_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_replica_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind StatefulSet
-spec list_namespaced_stateful_set(ctx:ctx(), binary()) -> {ok, kuberl_v1beta2_stateful_set_list:kuberl_v1beta2_stateful_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_stateful_set(Ctx, Namespace) ->
    list_namespaced_stateful_set(Ctx, Namespace, #{}).

-spec list_namespaced_stateful_set(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set_list:kuberl_v1beta2_stateful_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_stateful_set(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ReplicaSet
-spec list_replica_set_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta2_replica_set_list:kuberl_v1beta2_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_replica_set_for_all_namespaces(Ctx) ->
    list_replica_set_for_all_namespaces(Ctx, #{}).

-spec list_replica_set_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta2_replica_set_list:kuberl_v1beta2_replica_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_replica_set_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/replicasets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind StatefulSet
-spec list_stateful_set_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta2_stateful_set_list:kuberl_v1beta2_stateful_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_stateful_set_for_all_namespaces(Ctx) ->
    list_stateful_set_for_all_namespaces(Ctx, #{}).

-spec list_stateful_set_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set_list:kuberl_v1beta2_stateful_set_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_stateful_set_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/statefulsets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified ControllerRevision
-spec patch_namespaced_controller_revision(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_controller_revision(Ctx, Name, Namespace, Body) ->
    patch_namespaced_controller_revision(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_controller_revision(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_controller_revision(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/controllerrevisions/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified DaemonSet
-spec patch_namespaced_daemon_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set(Ctx, Name, Namespace, Body) ->
    patch_namespaced_daemon_set(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_daemon_set(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified DaemonSet
-spec patch_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified Deployment
-spec patch_namespaced_deployment(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment(Ctx, Name, Namespace, Body) ->
    patch_namespaced_deployment(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_deployment(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update scale of the specified Deployment
-spec patch_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_scale(Ctx, Name, Namespace, Body) ->
    patch_namespaced_deployment_scale(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified Deployment
-spec patch_namespaced_deployment_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_deployment_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_deployment_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_deployment_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified ReplicaSet
-spec patch_namespaced_replica_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replica_set(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replica_set(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update scale of the specified ReplicaSet
-spec patch_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_scale(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified ReplicaSet
-spec patch_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_replica_set_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_replica_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified StatefulSet
-spec patch_namespaced_stateful_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_stateful_set(Ctx, Name, Namespace, Body) ->
    patch_namespaced_stateful_set(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_stateful_set(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_stateful_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update scale of the specified StatefulSet
-spec patch_namespaced_stateful_set_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_stateful_set_scale(Ctx, Name, Namespace, Body) ->
    patch_namespaced_stateful_set_scale(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_stateful_set_scale(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_stateful_set_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified StatefulSet
-spec patch_namespaced_stateful_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_stateful_set_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_stateful_set_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_stateful_set_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_stateful_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified ControllerRevision
-spec read_namespaced_controller_revision(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_controller_revision(Ctx, Name, Namespace) ->
    read_namespaced_controller_revision(Ctx, Name, Namespace, #{}).

-spec read_namespaced_controller_revision(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_controller_revision(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/controllerrevisions/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified DaemonSet
-spec read_namespaced_daemon_set(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set(Ctx, Name, Namespace) ->
    read_namespaced_daemon_set(Ctx, Name, Namespace, #{}).

-spec read_namespaced_daemon_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified DaemonSet
-spec read_namespaced_daemon_set_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set_status(Ctx, Name, Namespace) ->
    read_namespaced_daemon_set_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_daemon_set_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified Deployment
-spec read_namespaced_deployment(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment(Ctx, Name, Namespace) ->
    read_namespaced_deployment(Ctx, Name, Namespace, #{}).

-spec read_namespaced_deployment(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read scale of the specified Deployment
-spec read_namespaced_deployment_scale(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_scale(Ctx, Name, Namespace) ->
    read_namespaced_deployment_scale(Ctx, Name, Namespace, #{}).

-spec read_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_scale(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified Deployment
-spec read_namespaced_deployment_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_status(Ctx, Name, Namespace) ->
    read_namespaced_deployment_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_deployment_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_deployment_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified ReplicaSet
-spec read_namespaced_replica_set(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set(Ctx, Name, Namespace) ->
    read_namespaced_replica_set(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replica_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read scale of the specified ReplicaSet
-spec read_namespaced_replica_set_scale(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_scale(Ctx, Name, Namespace) ->
    read_namespaced_replica_set_scale(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_scale(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified ReplicaSet
-spec read_namespaced_replica_set_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_status(Ctx, Name, Namespace) ->
    read_namespaced_replica_set_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_replica_set_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified StatefulSet
-spec read_namespaced_stateful_set(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_stateful_set(Ctx, Name, Namespace) ->
    read_namespaced_stateful_set(Ctx, Name, Namespace, #{}).

-spec read_namespaced_stateful_set(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_stateful_set(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read scale of the specified StatefulSet
-spec read_namespaced_stateful_set_scale(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_stateful_set_scale(Ctx, Name, Namespace) ->
    read_namespaced_stateful_set_scale(Ctx, Name, Namespace, #{}).

-spec read_namespaced_stateful_set_scale(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_stateful_set_scale(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified StatefulSet
-spec read_namespaced_stateful_set_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_stateful_set_status(Ctx, Name, Namespace) ->
    read_namespaced_stateful_set_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_stateful_set_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_stateful_set_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified ControllerRevision
-spec replace_namespaced_controller_revision(ctx:ctx(), binary(), binary(), kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_controller_revision(Ctx, Name, Namespace, Body) ->
    replace_namespaced_controller_revision(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_controller_revision(ctx:ctx(), binary(), binary(), kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), maps:map()) -> {ok, kuberl_v1beta2_controller_revision:kuberl_v1beta2_controller_revision(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_controller_revision(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/controllerrevisions/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified DaemonSet
-spec replace_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set(Ctx, Name, Namespace, Body) ->
    replace_namespaced_daemon_set(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_daemon_set(ctx:ctx(), binary(), binary(), kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified DaemonSet
-spec replace_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_daemon_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), maps:map()) -> {ok, kuberl_v1beta2_daemon_set:kuberl_v1beta2_daemon_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_daemon_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/daemonsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified Deployment
-spec replace_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_v1beta2_deployment:kuberl_v1beta2_deployment()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment(Ctx, Name, Namespace, Body) ->
    replace_namespaced_deployment(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_deployment(ctx:ctx(), binary(), binary(), kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace scale of the specified Deployment
-spec replace_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), kuberl_v1beta2_scale:kuberl_v1beta2_scale()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_scale(Ctx, Name, Namespace, Body) ->
    replace_namespaced_deployment_scale(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_deployment_scale(ctx:ctx(), binary(), binary(), kuberl_v1beta2_scale:kuberl_v1beta2_scale(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified Deployment
-spec replace_namespaced_deployment_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_deployment:kuberl_v1beta2_deployment()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_deployment_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_deployment_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), maps:map()) -> {ok, kuberl_v1beta2_deployment:kuberl_v1beta2_deployment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_deployment_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/deployments/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified ReplicaSet
-spec replace_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replica_set(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replica_set(ctx:ctx(), binary(), binary(), kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace scale of the specified ReplicaSet
-spec replace_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), kuberl_v1beta2_scale:kuberl_v1beta2_scale()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_scale(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replica_set_scale(ctx:ctx(), binary(), binary(), kuberl_v1beta2_scale:kuberl_v1beta2_scale(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified ReplicaSet
-spec replace_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_replica_set_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_replica_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), maps:map()) -> {ok, kuberl_v1beta2_replica_set:kuberl_v1beta2_replica_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_replica_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/replicasets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified StatefulSet
-spec replace_namespaced_stateful_set(ctx:ctx(), binary(), binary(), kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_stateful_set(Ctx, Name, Namespace, Body) ->
    replace_namespaced_stateful_set(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_stateful_set(ctx:ctx(), binary(), binary(), kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_stateful_set(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace scale of the specified StatefulSet
-spec replace_namespaced_stateful_set_scale(ctx:ctx(), binary(), binary(), kuberl_v1beta2_scale:kuberl_v1beta2_scale()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_stateful_set_scale(Ctx, Name, Namespace, Body) ->
    replace_namespaced_stateful_set_scale(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_stateful_set_scale(ctx:ctx(), binary(), binary(), kuberl_v1beta2_scale:kuberl_v1beta2_scale(), maps:map()) -> {ok, kuberl_v1beta2_scale:kuberl_v1beta2_scale(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_stateful_set_scale(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, "/scale"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified StatefulSet
-spec replace_namespaced_stateful_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_stateful_set_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_stateful_set_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_stateful_set_status(ctx:ctx(), binary(), binary(), kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), maps:map()) -> {ok, kuberl_v1beta2_stateful_set:kuberl_v1beta2_stateful_set(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_stateful_set_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apps/v1beta2/namespaces/", Namespace, "/statefulsets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).


