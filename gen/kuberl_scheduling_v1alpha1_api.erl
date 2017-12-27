-module(kuberl_scheduling_v1alpha1_api).

-export([create_priority_class/2, create_priority_class/3,
         delete_collection_priority_class/1, delete_collection_priority_class/2,
         delete_priority_class/3, delete_priority_class/4,
         get_api_resources/1, get_api_resources/2,
         list_priority_class/1, list_priority_class/2,
         patch_priority_class/3, patch_priority_class/4,
         read_priority_class/2, read_priority_class/3,
         replace_priority_class/3, replace_priority_class/4]).

-define(BASE_URL, "").

%% @doc 
%% create a PriorityClass
-spec create_priority_class(ctx:ctx(), kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_priority_class(Ctx, Body) ->
    create_priority_class(Ctx, Body, #{}).

-spec create_priority_class(ctx:ctx(), kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), maps:map()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_priority_class(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete collection of PriorityClass
-spec delete_collection_priority_class(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_priority_class(Ctx) ->
    delete_collection_priority_class(Ctx, #{}).

-spec delete_collection_priority_class(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_priority_class(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% delete a PriorityClass
-spec delete_priority_class(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_priority_class(Ctx, Name, Body) ->
    delete_priority_class(Ctx, Name, Body, #{}).

-spec delete_priority_class(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_priority_class(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/", Name, ""],
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
    Path = ["/apis/scheduling.k8s.io/v1alpha1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind PriorityClass
-spec list_priority_class(ctx:ctx()) -> {ok, kuberl_v1alpha1_priority_class_list:kuberl_v1alpha1_priority_class_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_priority_class(Ctx) ->
    list_priority_class(Ctx, #{}).

-spec list_priority_class(ctx:ctx(), maps:map()) -> {ok, kuberl_v1alpha1_priority_class_list:kuberl_v1alpha1_priority_class_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_priority_class(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% partially update the specified PriorityClass
-spec patch_priority_class(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_priority_class(Ctx, Name, Body) ->
    patch_priority_class(Ctx, Name, Body, #{}).

-spec patch_priority_class(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_priority_class(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% read the specified PriorityClass
-spec read_priority_class(ctx:ctx(), binary()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_priority_class(Ctx, Name) ->
    read_priority_class(Ctx, Name, #{}).

-spec read_priority_class(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_priority_class(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).

%% @doc 
%% replace the specified PriorityClass
-spec replace_priority_class(ctx:ctx(), binary(), kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_priority_class(Ctx, Name, Body) ->
    replace_priority_class(Ctx, Name, Body, #{}).

-spec replace_priority_class(ctx:ctx(), binary(), kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), maps:map()) -> {ok, kuberl_v1alpha1_priority_class:kuberl_v1alpha1_priority_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_priority_class(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, Headers, Body1, Opts).


