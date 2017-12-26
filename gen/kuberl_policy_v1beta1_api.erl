-module(kuberl_policy_v1beta1_api).

-export([create_namespaced_pod_disruption_budget/3, create_namespaced_pod_disruption_budget/4,
         delete_collection_namespaced_pod_disruption_budget/2, delete_collection_namespaced_pod_disruption_budget/3,
         delete_namespaced_pod_disruption_budget/4, delete_namespaced_pod_disruption_budget/5,
         get_api_resources/1, get_api_resources/2,
         list_namespaced_pod_disruption_budget/2, list_namespaced_pod_disruption_budget/3,
         list_pod_disruption_budget_for_all_namespaces/1, list_pod_disruption_budget_for_all_namespaces/2,
         patch_namespaced_pod_disruption_budget/4, patch_namespaced_pod_disruption_budget/5,
         patch_namespaced_pod_disruption_budget_status/4, patch_namespaced_pod_disruption_budget_status/5,
         read_namespaced_pod_disruption_budget/3, read_namespaced_pod_disruption_budget/4,
         read_namespaced_pod_disruption_budget_status/3, read_namespaced_pod_disruption_budget_status/4,
         replace_namespaced_pod_disruption_budget/4, replace_namespaced_pod_disruption_budget/5,
         replace_namespaced_pod_disruption_budget_status/4, replace_namespaced_pod_disruption_budget_status/5]).

-define(BASE_URL, <<"">>).

%% @doc 
%% create a PodDisruptionBudget
-spec create_namespaced_pod_disruption_budget(ctx:ctx(), binary(), kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_disruption_budget(Ctx, Namespace, Body) ->
    create_namespaced_pod_disruption_budget(Ctx, Namespace, Body, #{}).

-spec create_namespaced_pod_disruption_budget(ctx:ctx(), binary(), kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_pod_disruption_budget(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of PodDisruptionBudget
-spec delete_collection_namespaced_pod_disruption_budget(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_pod_disruption_budget(Ctx, Namespace) ->
    delete_collection_namespaced_pod_disruption_budget(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_pod_disruption_budget(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_pod_disruption_budget(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a PodDisruptionBudget
-spec delete_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body) ->
    delete_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets/", Name, ""],
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
    Path = ["/apis/policy/v1beta1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PodDisruptionBudget
-spec list_namespaced_pod_disruption_budget(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_pod_disruption_budget_list:kuberl_v1beta1_pod_disruption_budget_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_pod_disruption_budget(Ctx, Namespace) ->
    list_namespaced_pod_disruption_budget(Ctx, Namespace, #{}).

-spec list_namespaced_pod_disruption_budget(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget_list:kuberl_v1beta1_pod_disruption_budget_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_pod_disruption_budget(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PodDisruptionBudget
-spec list_pod_disruption_budget_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1beta1_pod_disruption_budget_list:kuberl_v1beta1_pod_disruption_budget_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_disruption_budget_for_all_namespaces(Ctx) ->
    list_pod_disruption_budget_for_all_namespaces(Ctx, #{}).

-spec list_pod_disruption_budget_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget_list:kuberl_v1beta1_pod_disruption_budget_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_pod_disruption_budget_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/policy/v1beta1/poddisruptionbudgets"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified PodDisruptionBudget
-spec patch_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body) ->
    patch_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified PodDisruptionBudget
-spec patch_namespaced_pod_disruption_budget_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_pod_disruption_budget_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified PodDisruptionBudget
-spec read_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_disruption_budget(Ctx, Name, Namespace) ->
    read_namespaced_pod_disruption_budget(Ctx, Name, Namespace, #{}).

-spec read_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read status of the specified PodDisruptionBudget
-spec read_namespaced_pod_disruption_budget_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace) ->
    read_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_pod_disruption_budget_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified PodDisruptionBudget
-spec replace_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary(), kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body) ->
    replace_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_pod_disruption_budget(ctx:ctx(), binary(), binary(), kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_disruption_budget(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace status of the specified PodDisruptionBudget
-spec replace_namespaced_pod_disruption_budget_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_pod_disruption_budget_status(ctx:ctx(), binary(), binary(), kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), maps:map()) -> {ok, kuberl_v1beta1_pod_disruption_budget:kuberl_v1beta1_pod_disruption_budget(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_pod_disruption_budget_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/policy/v1beta1/namespaces/", Namespace, "/poddisruptionbudgets/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).


