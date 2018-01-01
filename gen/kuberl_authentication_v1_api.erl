-module(kuberl_authentication_v1_api).

-export([create_token_review/2, create_token_review/3,
         get_api_resources/1, get_api_resources/2]).

-define(BASE_URL, "").

%% @doc 
%% create a TokenReview
-spec create_token_review(ctx:ctx(), kuberl_v1_token_review:kuberl_v1_token_review()) -> {ok, kuberl_v1_token_review:kuberl_v1_token_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_token_review(Ctx, Body) ->
    create_token_review(Ctx, Body, #{}).

-spec create_token_review(ctx:ctx(), kuberl_v1_token_review:kuberl_v1_token_review(), maps:map()) -> {ok, kuberl_v1_token_review:kuberl_v1_token_review(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_token_review(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/authentication.k8s.io/v1/tokenreviews"],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
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
    Path = ["/apis/authentication.k8s.io/v1/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"application/json">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


