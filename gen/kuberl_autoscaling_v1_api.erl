-module(kuberl_autoscaling_v1_api).

-export([create_namespaced_horizontal_pod_autoscaler/3, create_namespaced_horizontal_pod_autoscaler/4,
         delete_collection_namespaced_horizontal_pod_autoscaler/2, delete_collection_namespaced_horizontal_pod_autoscaler/3,
         delete_namespaced_horizontal_pod_autoscaler/4, delete_namespaced_horizontal_pod_autoscaler/5,
         get_api_resources/1, get_api_resources/2,
         list_horizontal_pod_autoscaler_for_all_namespaces/1, list_horizontal_pod_autoscaler_for_all_namespaces/2,
         list_namespaced_horizontal_pod_autoscaler/2, list_namespaced_horizontal_pod_autoscaler/3,
         patch_namespaced_horizontal_pod_autoscaler/4, patch_namespaced_horizontal_pod_autoscaler/5,
         patch_namespaced_horizontal_pod_autoscaler_status/4, patch_namespaced_horizontal_pod_autoscaler_status/5,
         read_namespaced_horizontal_pod_autoscaler/3, read_namespaced_horizontal_pod_autoscaler/4,
         read_namespaced_horizontal_pod_autoscaler_status/3, read_namespaced_horizontal_pod_autoscaler_status/4,
         replace_namespaced_horizontal_pod_autoscaler/4, replace_namespaced_horizontal_pod_autoscaler/5,
         replace_namespaced_horizontal_pod_autoscaler_status/4, replace_namespaced_horizontal_pod_autoscaler_status/5]).

-define(BASE_URL, "").

%% @doc 
%% create a HorizontalPodAutoscaler
-spec create_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_horizontal_pod_autoscaler(Ctx, Namespace, Body) ->
    create_namespaced_horizontal_pod_autoscaler(Ctx, Namespace, Body, #{}).

-spec create_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_horizontal_pod_autoscaler(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of HorizontalPodAutoscaler
-spec delete_collection_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_horizontal_pod_autoscaler(Ctx, Namespace) ->
    delete_collection_namespaced_horizontal_pod_autoscaler(Ctx, Namespace, #{}).

-spec delete_collection_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_namespaced_horizontal_pod_autoscaler(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete a HorizontalPodAutoscaler
-spec delete_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body) ->
    delete_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body, #{}).

-spec delete_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers/", Name, ""],
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
    Path = ["/apis/autoscaling/v1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind HorizontalPodAutoscaler
-spec list_horizontal_pod_autoscaler_for_all_namespaces(ctx:ctx()) -> {ok, kuberl_v1_horizontal_pod_autoscaler_list:kuberl_v1_horizontal_pod_autoscaler_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_horizontal_pod_autoscaler_for_all_namespaces(Ctx) ->
    list_horizontal_pod_autoscaler_for_all_namespaces(Ctx, #{}).

-spec list_horizontal_pod_autoscaler_for_all_namespaces(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler_list:kuberl_v1_horizontal_pod_autoscaler_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_horizontal_pod_autoscaler_for_all_namespaces(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/autoscaling/v1/horizontalpodautoscalers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'pretty', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind HorizontalPodAutoscaler
-spec list_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary()) -> {ok, kuberl_v1_horizontal_pod_autoscaler_list:kuberl_v1_horizontal_pod_autoscaler_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_horizontal_pod_autoscaler(Ctx, Namespace) ->
    list_namespaced_horizontal_pod_autoscaler(Ctx, Namespace, #{}).

-spec list_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler_list:kuberl_v1_horizontal_pod_autoscaler_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_horizontal_pod_autoscaler(Ctx, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified HorizontalPodAutoscaler
-spec patch_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body) ->
    patch_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update status of the specified HorizontalPodAutoscaler
-spec patch_namespaced_horizontal_pod_autoscaler_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, Body) ->
    patch_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, Body, #{}).

-spec patch_namespaced_horizontal_pod_autoscaler_status(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified HorizontalPodAutoscaler
-spec read_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace) ->
    read_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, #{}).

-spec read_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read status of the specified HorizontalPodAutoscaler
-spec read_namespaced_horizontal_pod_autoscaler_status(ctx:ctx(), binary(), binary()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace) ->
    read_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, #{}).

-spec read_namespaced_horizontal_pod_autoscaler_status(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified HorizontalPodAutoscaler
-spec replace_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary(), kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body) ->
    replace_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_horizontal_pod_autoscaler(ctx:ctx(), binary(), binary(), kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_horizontal_pod_autoscaler(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace status of the specified HorizontalPodAutoscaler
-spec replace_namespaced_horizontal_pod_autoscaler_status(ctx:ctx(), binary(), binary(), kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, Body) ->
    replace_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, Body, #{}).

-spec replace_namespaced_horizontal_pod_autoscaler_status(ctx:ctx(), binary(), binary(), kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), maps:map()) -> {ok, kuberl_v1_horizontal_pod_autoscaler:kuberl_v1_horizontal_pod_autoscaler(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_horizontal_pod_autoscaler_status(Ctx, Name, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/autoscaling/v1/namespaces/", Namespace, "/horizontalpodautoscalers/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


