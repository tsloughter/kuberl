-module(kuberl_admissionregistration_v1alpha1_api).

-export([create_external_admission_hook_configuration/2, create_external_admission_hook_configuration/3,
         create_initializer_configuration/2, create_initializer_configuration/3,
         delete_collection_external_admission_hook_configuration/1, delete_collection_external_admission_hook_configuration/2,
         delete_collection_initializer_configuration/1, delete_collection_initializer_configuration/2,
         delete_external_admission_hook_configuration/3, delete_external_admission_hook_configuration/4,
         delete_initializer_configuration/3, delete_initializer_configuration/4,
         get_api_resources/1, get_api_resources/2,
         list_external_admission_hook_configuration/1, list_external_admission_hook_configuration/2,
         list_initializer_configuration/1, list_initializer_configuration/2,
         patch_external_admission_hook_configuration/3, patch_external_admission_hook_configuration/4,
         patch_initializer_configuration/3, patch_initializer_configuration/4,
         read_external_admission_hook_configuration/2, read_external_admission_hook_configuration/3,
         read_initializer_configuration/2, read_initializer_configuration/3,
         replace_external_admission_hook_configuration/3, replace_external_admission_hook_configuration/4,
         replace_initializer_configuration/3, replace_initializer_configuration/4]).

-define(BASE_URL, "").

%% @doc 
%% create an ExternalAdmissionHookConfiguration
-spec create_external_admission_hook_configuration(ctx:ctx(), kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_external_admission_hook_configuration(Ctx, Body) ->
    create_external_admission_hook_configuration(Ctx, Body, #{}).

-spec create_external_admission_hook_configuration(ctx:ctx(), kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), maps:map()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_external_admission_hook_configuration(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% create an InitializerConfiguration
-spec create_initializer_configuration(ctx:ctx(), kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_initializer_configuration(Ctx, Body) ->
    create_initializer_configuration(Ctx, Body, #{}).

-spec create_initializer_configuration(ctx:ctx(), kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), maps:map()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_initializer_configuration(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/initializerconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of ExternalAdmissionHookConfiguration
-spec delete_collection_external_admission_hook_configuration(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_external_admission_hook_configuration(Ctx) ->
    delete_collection_external_admission_hook_configuration(Ctx, #{}).

-spec delete_collection_external_admission_hook_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_external_admission_hook_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete collection of InitializerConfiguration
-spec delete_collection_initializer_configuration(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_initializer_configuration(Ctx) ->
    delete_collection_initializer_configuration(Ctx, #{}).

-spec delete_collection_initializer_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_initializer_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/initializerconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete an ExternalAdmissionHookConfiguration
-spec delete_external_admission_hook_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_external_admission_hook_configuration(Ctx, Name, Body) ->
    delete_external_admission_hook_configuration(Ctx, Name, Body, #{}).

-spec delete_external_admission_hook_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_external_admission_hook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% delete an InitializerConfiguration
-spec delete_initializer_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_initializer_configuration(Ctx, Name, Body) ->
    delete_initializer_configuration(Ctx, Name, Body, #{}).

-spec delete_initializer_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_initializer_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/initializerconfigurations/", Name, ""],
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
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind ExternalAdmissionHookConfiguration
-spec list_external_admission_hook_configuration(ctx:ctx()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration_list:kuberl_v1alpha1_external_admission_hook_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_external_admission_hook_configuration(Ctx) ->
    list_external_admission_hook_configuration(Ctx, #{}).

-spec list_external_admission_hook_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration_list:kuberl_v1alpha1_external_admission_hook_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_external_admission_hook_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch objects of kind InitializerConfiguration
-spec list_initializer_configuration(ctx:ctx()) -> {ok, kuberl_v1alpha1_initializer_configuration_list:kuberl_v1alpha1_initializer_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_initializer_configuration(Ctx) ->
    list_initializer_configuration(Ctx, #{}).

-spec list_initializer_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1alpha1_initializer_configuration_list:kuberl_v1alpha1_initializer_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_initializer_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/initializerconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified ExternalAdmissionHookConfiguration
-spec patch_external_admission_hook_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_external_admission_hook_configuration(Ctx, Name, Body) ->
    patch_external_admission_hook_configuration(Ctx, Name, Body, #{}).

-spec patch_external_admission_hook_configuration(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_external_admission_hook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% partially update the specified InitializerConfiguration
-spec patch_initializer_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_initializer_configuration(Ctx, Name, Body) ->
    patch_initializer_configuration(Ctx, Name, Body, #{}).

-spec patch_initializer_configuration(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_initializer_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = patch,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/initializerconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified ExternalAdmissionHookConfiguration
-spec read_external_admission_hook_configuration(ctx:ctx(), binary()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_external_admission_hook_configuration(Ctx, Name) ->
    read_external_admission_hook_configuration(Ctx, Name, #{}).

-spec read_external_admission_hook_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_external_admission_hook_configuration(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% read the specified InitializerConfiguration
-spec read_initializer_configuration(ctx:ctx(), binary()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_initializer_configuration(Ctx, Name) ->
    read_initializer_configuration(Ctx, Name, #{}).

-spec read_initializer_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_initializer_configuration(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/initializerconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified ExternalAdmissionHookConfiguration
-spec replace_external_admission_hook_configuration(ctx:ctx(), binary(), kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_external_admission_hook_configuration(Ctx, Name, Body) ->
    replace_external_admission_hook_configuration(Ctx, Name, Body, #{}).

-spec replace_external_admission_hook_configuration(ctx:ctx(), binary(), kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), maps:map()) -> {ok, kuberl_v1alpha1_external_admission_hook_configuration:kuberl_v1alpha1_external_admission_hook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_external_admission_hook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified InitializerConfiguration
-spec replace_initializer_configuration(ctx:ctx(), binary(), kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_initializer_configuration(Ctx, Name, Body) ->
    replace_initializer_configuration(Ctx, Name, Body, #{}).

-spec replace_initializer_configuration(ctx:ctx(), binary(), kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), maps:map()) -> {ok, kuberl_v1alpha1_initializer_configuration:kuberl_v1alpha1_initializer_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_initializer_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/admissionregistration.k8s.io/v1alpha1/initializerconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


