-module(kuberl_apiextensions_v1beta1_api).

-export([create_custom_resource_definition/2, create_custom_resource_definition/3,
         delete_collection_custom_resource_definition/1, delete_collection_custom_resource_definition/2,
         delete_custom_resource_definition/3, delete_custom_resource_definition/4,
         get_api_resources/1, get_api_resources/2,
         list_custom_resource_definition/1, list_custom_resource_definition/2,
         patch_custom_resource_definition/3, patch_custom_resource_definition/4,
         read_custom_resource_definition/2, read_custom_resource_definition/3,
         replace_custom_resource_definition/3, replace_custom_resource_definition/4,
         replace_custom_resource_definition_status/3, replace_custom_resource_definition_status/4]).

-define(BASE_URL, "").

%% @doc 
%% create a CustomResourceDefinition
-spec create_custom_resource_definition(ctx:ctx(), kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_custom_resource_definition(Ctx, Body) ->
    create_custom_resource_definition(Ctx, Body, #{}).

-spec create_custom_resource_definition(ctx:ctx(), kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), maps:map()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_custom_resource_definition(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of CustomResourceDefinition
-spec delete_collection_custom_resource_definition(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_custom_resource_definition(Ctx) ->
    delete_collection_custom_resource_definition(Ctx, #{}).

-spec delete_collection_custom_resource_definition(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_custom_resource_definition(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete a CustomResourceDefinition
-spec delete_custom_resource_definition(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_custom_resource_definition(Ctx, Name, Body) ->
    delete_custom_resource_definition(Ctx, Name, Body, #{}).

-spec delete_custom_resource_definition(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_custom_resource_definition(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/", Name, ""],
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
    Path = ["/apis/apiextensions.k8s.io/v1beta1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"application/json">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind CustomResourceDefinition
-spec list_custom_resource_definition(ctx:ctx()) -> {ok, kuberl_v1beta1_custom_resource_definition_list:kuberl_v1beta1_custom_resource_definition_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_custom_resource_definition(Ctx) ->
    list_custom_resource_definition(Ctx, #{}).

-spec list_custom_resource_definition(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_custom_resource_definition_list:kuberl_v1beta1_custom_resource_definition_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_custom_resource_definition(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified CustomResourceDefinition
-spec patch_custom_resource_definition(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_custom_resource_definition(Ctx, Name, Body) ->
    patch_custom_resource_definition(Ctx, Name, Body, #{}).

-spec patch_custom_resource_definition(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_custom_resource_definition(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"application/json-patch+json">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified CustomResourceDefinition
-spec read_custom_resource_definition(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_custom_resource_definition(Ctx, Name) ->
    read_custom_resource_definition(Ctx, Name, #{}).

-spec read_custom_resource_definition(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_custom_resource_definition(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified CustomResourceDefinition
-spec replace_custom_resource_definition(ctx:ctx(), binary(), kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_custom_resource_definition(Ctx, Name, Body) ->
    replace_custom_resource_definition(Ctx, Name, Body, #{}).

-spec replace_custom_resource_definition(ctx:ctx(), binary(), kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), maps:map()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_custom_resource_definition(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace status of the specified CustomResourceDefinition
-spec replace_custom_resource_definition_status(ctx:ctx(), binary(), kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_custom_resource_definition_status(Ctx, Name, Body) ->
    replace_custom_resource_definition_status(Ctx, Name, Body, #{}).

-spec replace_custom_resource_definition_status(ctx:ctx(), binary(), kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), maps:map()) -> {ok, kuberl_v1beta1_custom_resource_definition:kuberl_v1beta1_custom_resource_definition(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_custom_resource_definition_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


