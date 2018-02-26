-module(kuberl_admissionregistration_v1beta1_api).

-export([create_mutating_webhook_configuration/2, create_mutating_webhook_configuration/3,
         create_validating_webhook_configuration/2, create_validating_webhook_configuration/3,
         delete_collection_mutating_webhook_configuration/1, delete_collection_mutating_webhook_configuration/2,
         delete_collection_validating_webhook_configuration/1, delete_collection_validating_webhook_configuration/2,
         delete_mutating_webhook_configuration/3, delete_mutating_webhook_configuration/4,
         delete_validating_webhook_configuration/3, delete_validating_webhook_configuration/4,
         get_api_resources/1, get_api_resources/2,
         list_mutating_webhook_configuration/1, list_mutating_webhook_configuration/2,
         list_validating_webhook_configuration/1, list_validating_webhook_configuration/2,
         patch_mutating_webhook_configuration/3, patch_mutating_webhook_configuration/4,
         patch_validating_webhook_configuration/3, patch_validating_webhook_configuration/4,
         read_mutating_webhook_configuration/2, read_mutating_webhook_configuration/3,
         read_validating_webhook_configuration/2, read_validating_webhook_configuration/3,
         replace_mutating_webhook_configuration/3, replace_mutating_webhook_configuration/4,
         replace_validating_webhook_configuration/3, replace_validating_webhook_configuration/4]).

-define(BASE_URL, "").

%% @doc 
%% create a MutatingWebhookConfiguration
-spec create_mutating_webhook_configuration(ctx:ctx(), kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_mutating_webhook_configuration(Ctx, Body) ->
    create_mutating_webhook_configuration(Ctx, Body, #{}).

-spec create_mutating_webhook_configuration(ctx:ctx(), kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), maps:map()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_mutating_webhook_configuration(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a ValidatingWebhookConfiguration
-spec create_validating_webhook_configuration(ctx:ctx(), kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_validating_webhook_configuration(Ctx, Body) ->
    create_validating_webhook_configuration(Ctx, Body, #{}).

-spec create_validating_webhook_configuration(ctx:ctx(), kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), maps:map()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_validating_webhook_configuration(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of MutatingWebhookConfiguration
-spec delete_collection_mutating_webhook_configuration(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_mutating_webhook_configuration(Ctx) ->
    delete_collection_mutating_webhook_configuration(Ctx, #{}).

-spec delete_collection_mutating_webhook_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_mutating_webhook_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of ValidatingWebhookConfiguration
-spec delete_collection_validating_webhook_configuration(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_validating_webhook_configuration(Ctx) ->
    delete_collection_validating_webhook_configuration(Ctx, #{}).

-spec delete_collection_validating_webhook_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_validating_webhook_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a MutatingWebhookConfiguration
-spec delete_mutating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_mutating_webhook_configuration(Ctx, Name, Body) ->
    delete_mutating_webhook_configuration(Ctx, Name, Body, #{}).

-spec delete_mutating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_mutating_webhook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a ValidatingWebhookConfiguration
-spec delete_validating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_validating_webhook_configuration(Ctx, Name, Body) ->
    delete_validating_webhook_configuration(Ctx, Name, Body, #{}).

-spec delete_validating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_validating_webhook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/", Name, ""],
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
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind MutatingWebhookConfiguration
-spec list_mutating_webhook_configuration(ctx:ctx()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration_list:kuberl_v1beta1_mutating_webhook_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_mutating_webhook_configuration(Ctx) ->
    list_mutating_webhook_configuration(Ctx, #{}).

-spec list_mutating_webhook_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration_list:kuberl_v1beta1_mutating_webhook_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_mutating_webhook_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind ValidatingWebhookConfiguration
-spec list_validating_webhook_configuration(ctx:ctx()) -> {ok, kuberl_v1beta1_validating_webhook_configuration_list:kuberl_v1beta1_validating_webhook_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_validating_webhook_configuration(Ctx) ->
    list_validating_webhook_configuration(Ctx, #{}).

-spec list_validating_webhook_configuration(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_validating_webhook_configuration_list:kuberl_v1beta1_validating_webhook_configuration_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_validating_webhook_configuration(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified MutatingWebhookConfiguration
-spec patch_mutating_webhook_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_mutating_webhook_configuration(Ctx, Name, Body) ->
    patch_mutating_webhook_configuration(Ctx, Name, Body, #{}).

-spec patch_mutating_webhook_configuration(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_mutating_webhook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified ValidatingWebhookConfiguration
-spec patch_validating_webhook_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_validating_webhook_configuration(Ctx, Name, Body) ->
    patch_validating_webhook_configuration(Ctx, Name, Body, #{}).

-spec patch_validating_webhook_configuration(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_validating_webhook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified MutatingWebhookConfiguration
-spec read_mutating_webhook_configuration(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_mutating_webhook_configuration(Ctx, Name) ->
    read_mutating_webhook_configuration(Ctx, Name, #{}).

-spec read_mutating_webhook_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_mutating_webhook_configuration(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified ValidatingWebhookConfiguration
-spec read_validating_webhook_configuration(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_validating_webhook_configuration(Ctx, Name) ->
    read_validating_webhook_configuration(Ctx, Name, #{}).

-spec read_validating_webhook_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_validating_webhook_configuration(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified MutatingWebhookConfiguration
-spec replace_mutating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_mutating_webhook_configuration(Ctx, Name, Body) ->
    replace_mutating_webhook_configuration(Ctx, Name, Body, #{}).

-spec replace_mutating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), maps:map()) -> {ok, kuberl_v1beta1_mutating_webhook_configuration:kuberl_v1beta1_mutating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_mutating_webhook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified ValidatingWebhookConfiguration
-spec replace_validating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_validating_webhook_configuration(Ctx, Name, Body) ->
    replace_validating_webhook_configuration(Ctx, Name, Body, #{}).

-spec replace_validating_webhook_configuration(ctx:ctx(), binary(), kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), maps:map()) -> {ok, kuberl_v1beta1_validating_webhook_configuration:kuberl_v1beta1_validating_webhook_configuration(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_validating_webhook_configuration(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


