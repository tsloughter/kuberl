-module(kuberl_storage_v1alpha1_api).

-export([create_volume_attachment/2, create_volume_attachment/3,
         delete_collection_volume_attachment/1, delete_collection_volume_attachment/2,
         delete_volume_attachment/3, delete_volume_attachment/4,
         get_api_resources/1, get_api_resources/2,
         list_volume_attachment/1, list_volume_attachment/2,
         patch_volume_attachment/3, patch_volume_attachment/4,
         read_volume_attachment/2, read_volume_attachment/3,
         replace_volume_attachment/3, replace_volume_attachment/4]).

-define(BASE_URL, "").

%% @doc 
%% create a VolumeAttachment
-spec create_volume_attachment(ctx:ctx(), kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_volume_attachment(Ctx, Body) ->
    create_volume_attachment(Ctx, Body, #{}).

-spec create_volume_attachment(ctx:ctx(), kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), maps:map()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_volume_attachment(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/storage.k8s.io/v1alpha1/volumeattachments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete collection of VolumeAttachment
-spec delete_collection_volume_attachment(ctx:ctx()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_volume_attachment(Ctx) ->
    delete_collection_volume_attachment(Ctx, #{}).

-spec delete_collection_volume_attachment(ctx:ctx(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_collection_volume_attachment(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/storage.k8s.io/v1alpha1/volumeattachments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% delete a VolumeAttachment
-spec delete_volume_attachment(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_volume_attachment(Ctx, Name, Body) ->
    delete_volume_attachment(Ctx, Name, Body, #{}).

-spec delete_volume_attachment(ctx:ctx(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, kuberl_v1_status:kuberl_v1_status(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_volume_attachment(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/apis/storage.k8s.io/v1alpha1/volumeattachments/", Name, ""],
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
    Path = ["/apis/storage.k8s.io/v1alpha1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% list or watch objects of kind VolumeAttachment
-spec list_volume_attachment(ctx:ctx()) -> {ok, kuberl_v1alpha1_volume_attachment_list:kuberl_v1alpha1_volume_attachment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_volume_attachment(Ctx) ->
    list_volume_attachment(Ctx, #{}).

-spec list_volume_attachment(ctx:ctx(), maps:map()) -> {ok, kuberl_v1alpha1_volume_attachment_list:kuberl_v1alpha1_volume_attachment_list(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_volume_attachment(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/storage.k8s.io/v1alpha1/volumeattachments"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'continue', 'fieldSelector', 'includeUninitialized', 'labelSelector', 'limit', 'resourceVersion', 'timeoutSeconds', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% partially update the specified VolumeAttachment
-spec patch_volume_attachment(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_volume_attachment(Ctx, Name, Body) ->
    patch_volume_attachment(Ctx, Name, Body, #{}).

-spec patch_volume_attachment(ctx:ctx(), binary(), maps:map(), maps:map()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
patch_volume_attachment(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/apis/storage.k8s.io/v1alpha1/volumeattachments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json-patch+json">>, <<"application/merge-patch+json">>, <<"application/strategic-merge-patch+json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% read the specified VolumeAttachment
-spec read_volume_attachment(ctx:ctx(), binary()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_volume_attachment(Ctx, Name) ->
    read_volume_attachment(Ctx, Name, #{}).

-spec read_volume_attachment(ctx:ctx(), binary(), maps:map()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
read_volume_attachment(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/apis/storage.k8s.io/v1alpha1/volumeattachments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'exact', 'export'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% replace the specified VolumeAttachment
-spec replace_volume_attachment(ctx:ctx(), binary(), kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_volume_attachment(Ctx, Name, Body) ->
    replace_volume_attachment(Ctx, Name, Body, #{}).

-spec replace_volume_attachment(ctx:ctx(), binary(), kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), maps:map()) -> {ok, kuberl_v1alpha1_volume_attachment:kuberl_v1alpha1_volume_attachment(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_volume_attachment(Ctx, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/apis/storage.k8s.io/v1alpha1/volumeattachments/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


