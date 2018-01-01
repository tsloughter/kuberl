-module(kuberl_storage_v1_api).

-export([create_storage_class/2, create_storage_class/3,
         delete_collection_storage_class/1, delete_collection_storage_class/2,
         delete_storage_class/3, delete_storage_class/4,
         get_api_resources/1, get_api_resources/2,
         list_storage_class/1, list_storage_class/2,
         patch_storage_class/3, patch_storage_class/4,
         read_storage_class/2, read_storage_class/3,
         replace_storage_class/3, replace_storage_class/4]).

-define(BASE_URL, "").

%% @doc 
%% create a StorageClass
-spec create_storage_class(ctx:ctx(), kuberl_v1_storage_class:kuberl_v1_storage_class()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_storage_class(Ctx, Body) ->
    create_storage_class(Ctx, Body, #{}).

-spec create_storage_class(ctx:ctx(), kuberl_v1_storage_class:kuberl_v1_storage_class(), maps:map()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_storage_class(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/storage.k8s.io/v1/storageclasses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of StorageClass
-spec delete_collection_storage_class(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_storage_class(Ctx) ->
    delete_collection_storage_class(Ctx, #{}).

-spec delete_collection_storage_class(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_storage_class(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/storage.k8s.io/v1/storageclasses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete a StorageClass
-spec delete_storage_class(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_storage_class(Ctx, Name, Body) ->
    delete_storage_class(Ctx, Name, Body, #{}).

-spec delete_storage_class(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_storage_class(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/storage.k8s.io/v1/storageclasses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
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
    Path = ["/apis/storage.k8s.io/v1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"application/json">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind StorageClass
-spec list_storage_class(ctx:ctx()) -> {ok, kuberl_v1_storage_class_list:kuberl_v1_storage_class_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_storage_class(Ctx) ->
    list_storage_class(Ctx, #{}).

-spec list_storage_class(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_storage_class_list:kuberl_v1_storage_class_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_storage_class(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/storage.k8s.io/v1/storageclasses"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified StorageClass
-spec patch_storage_class(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_storage_class(Ctx, Name, Body) ->
    patch_storage_class(Ctx, Name, Body, #{}).

-spec patch_storage_class(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_storage_class(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/storage.k8s.io/v1/storageclasses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"application/json-patch+json">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified StorageClass
-spec read_storage_class(ctx:ctx(), binary()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_storage_class(Ctx, Name) ->
    read_storage_class(Ctx, Name, #{}).

-spec read_storage_class(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_storage_class(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/storage.k8s.io/v1/storageclasses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified StorageClass
-spec replace_storage_class(ctx:ctx(), binary(), kuberl_v1_storage_class:kuberl_v1_storage_class()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_storage_class(Ctx, Name, Body) ->
    replace_storage_class(Ctx, Name, Body, #{}).

-spec replace_storage_class(ctx:ctx(), binary(), kuberl_v1_storage_class:kuberl_v1_storage_class(), maps:map()) -> {ok, kuberl_v1_storage_class:kuberl_v1_storage_class(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_storage_class(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/storage.k8s.io/v1/storageclasses/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


