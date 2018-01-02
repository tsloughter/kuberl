-module(kuberl_certificates_v1beta1_api).

-export([create_certificate_signing_request/2, create_certificate_signing_request/3,
         delete_certificate_signing_request/3, delete_certificate_signing_request/4,
         delete_collection_certificate_signing_request/1, delete_collection_certificate_signing_request/2,
         get_api_resources/1, get_api_resources/2,
         list_certificate_signing_request/1, list_certificate_signing_request/2,
         patch_certificate_signing_request/3, patch_certificate_signing_request/4,
         read_certificate_signing_request/2, read_certificate_signing_request/3,
         replace_certificate_signing_request/3, replace_certificate_signing_request/4,
         replace_certificate_signing_request_approval/3, replace_certificate_signing_request_approval/4,
         replace_certificate_signing_request_status/3, replace_certificate_signing_request_status/4]).

-define(BASE_URL, "").

%% @doc 
%% create a CertificateSigningRequest
-spec create_certificate_signing_request(ctx:ctx(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_certificate_signing_request(Ctx, Body) ->
    create_certificate_signing_request(Ctx, Body, #{}).

-spec create_certificate_signing_request(ctx:ctx(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_certificate_signing_request(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a CertificateSigningRequest
-spec delete_certificate_signing_request(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_certificate_signing_request(Ctx, Name, Body) ->
    delete_certificate_signing_request(Ctx, Name, Body, #{}).

-spec delete_certificate_signing_request(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_certificate_signing_request(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of CertificateSigningRequest
-spec delete_collection_certificate_signing_request(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_certificate_signing_request(Ctx) ->
    delete_collection_certificate_signing_request(Ctx, #{}).

-spec delete_collection_certificate_signing_request(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_certificate_signing_request(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
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
    Path = ["/apis/certificates.k8s.io/v1beta1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind CertificateSigningRequest
-spec list_certificate_signing_request(ctx:ctx()) -> {ok, kuberl_v1beta1_certificate_signing_request_list:kuberl_v1beta1_certificate_signing_request_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_certificate_signing_request(Ctx) ->
    list_certificate_signing_request(Ctx, #{}).

-spec list_certificate_signing_request(ctx:ctx(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request_list:kuberl_v1beta1_certificate_signing_request_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_certificate_signing_request(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified CertificateSigningRequest
-spec patch_certificate_signing_request(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_certificate_signing_request(Ctx, Name, Body) ->
    patch_certificate_signing_request(Ctx, Name, Body, #{}).

-spec patch_certificate_signing_request(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_certificate_signing_request(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified CertificateSigningRequest
-spec read_certificate_signing_request(ctx:ctx(), binary()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_certificate_signing_request(Ctx, Name) ->
    read_certificate_signing_request(Ctx, Name, #{}).

-spec read_certificate_signing_request(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_certificate_signing_request(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified CertificateSigningRequest
-spec replace_certificate_signing_request(ctx:ctx(), binary(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_certificate_signing_request(Ctx, Name, Body) ->
    replace_certificate_signing_request(Ctx, Name, Body, #{}).

-spec replace_certificate_signing_request(ctx:ctx(), binary(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_certificate_signing_request(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace approval of the specified CertificateSigningRequest
-spec replace_certificate_signing_request_approval(ctx:ctx(), binary(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_certificate_signing_request_approval(Ctx, Name, Body) ->
    replace_certificate_signing_request_approval(Ctx, Name, Body, #{}).

-spec replace_certificate_signing_request_approval(ctx:ctx(), binary(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_certificate_signing_request_approval(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/", Name, "/approval"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace status of the specified CertificateSigningRequest
-spec replace_certificate_signing_request_status(ctx:ctx(), binary(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_certificate_signing_request_status(Ctx, Name, Body) ->
    replace_certificate_signing_request_status(Ctx, Name, Body, #{}).

-spec replace_certificate_signing_request_status(ctx:ctx(), binary(), kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), maps:map()) -> {ok, kuberl_v1beta1_certificate_signing_request:kuberl_v1beta1_certificate_signing_request(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_certificate_signing_request_status(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/", Name, "/status"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


