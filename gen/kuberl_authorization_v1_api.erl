-module(kuberl_authorization_v1_api).

-export([create_namespaced_local_subject_access_review/3, create_namespaced_local_subject_access_review/4,
         create_self_subject_access_review/2, create_self_subject_access_review/3,
         create_self_subject_rules_review/2, create_self_subject_rules_review/3,
         create_subject_access_review/2, create_subject_access_review/3,
         get_api_resources/1, get_api_resources/2]).

-define(BASE_URL, "").

%% @doc 
%% create a LocalSubjectAccessReview
-spec create_namespaced_local_subject_access_review(ctx:ctx(), binary(), kuberl_v1_local_subject_access_review:kuberl_v1_local_subject_access_review()) -> {ok, kuberl_v1_local_subject_access_review:kuberl_v1_local_subject_access_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_local_subject_access_review(Ctx, Namespace, Body) ->
    create_namespaced_local_subject_access_review(Ctx, Namespace, Body, #{}).

-spec create_namespaced_local_subject_access_review(ctx:ctx(), binary(), kuberl_v1_local_subject_access_review:kuberl_v1_local_subject_access_review(), maps:map()) -> {ok, kuberl_v1_local_subject_access_review:kuberl_v1_local_subject_access_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_local_subject_access_review(Ctx, Namespace, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/authorization.k8s.io/v1/namespaces/", Namespace, "/localsubjectaccessreviews"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a SelfSubjectAccessReview
-spec create_self_subject_access_review(ctx:ctx(), kuberl_v1_self_subject_access_review:kuberl_v1_self_subject_access_review()) -> {ok, kuberl_v1_self_subject_access_review:kuberl_v1_self_subject_access_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_self_subject_access_review(Ctx, Body) ->
    create_self_subject_access_review(Ctx, Body, #{}).

-spec create_self_subject_access_review(ctx:ctx(), kuberl_v1_self_subject_access_review:kuberl_v1_self_subject_access_review(), maps:map()) -> {ok, kuberl_v1_self_subject_access_review:kuberl_v1_self_subject_access_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_self_subject_access_review(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/authorization.k8s.io/v1/selfsubjectaccessreviews"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a SelfSubjectRulesReview
-spec create_self_subject_rules_review(ctx:ctx(), kuberl_v1_self_subject_rules_review:kuberl_v1_self_subject_rules_review()) -> {ok, kuberl_v1_self_subject_rules_review:kuberl_v1_self_subject_rules_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_self_subject_rules_review(Ctx, Body) ->
    create_self_subject_rules_review(Ctx, Body, #{}).

-spec create_self_subject_rules_review(ctx:ctx(), kuberl_v1_self_subject_rules_review:kuberl_v1_self_subject_rules_review(), maps:map()) -> {ok, kuberl_v1_self_subject_rules_review:kuberl_v1_self_subject_rules_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_self_subject_rules_review(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/authorization.k8s.io/v1/selfsubjectrulesreviews"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"*/*">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% create a SubjectAccessReview
-spec create_subject_access_review(ctx:ctx(), kuberl_v1_subject_access_review:kuberl_v1_subject_access_review()) -> {ok, kuberl_v1_subject_access_review:kuberl_v1_subject_access_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_subject_access_review(Ctx, Body) ->
    create_subject_access_review(Ctx, Body, #{}).

-spec create_subject_access_review(ctx:ctx(), kuberl_v1_subject_access_review:kuberl_v1_subject_access_review(), maps:map()) -> {ok, kuberl_v1_subject_access_review:kuberl_v1_subject_access_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_subject_access_review(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/apis/authorization.k8s.io/v1/subjectaccessreviews"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
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
    Path = ["/apis/authorization.k8s.io/v1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>, <<"application/yaml">>, <<"application/vnd.kubernetes.protobuf">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


