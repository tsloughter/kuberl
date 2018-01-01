-module(kuberl_custom_objects_api).

-export([create_cluster_custom_object/5, create_cluster_custom_object/6,
         create_namespaced_custom_object/6, create_namespaced_custom_object/7,
         delete_cluster_custom_object/6, delete_cluster_custom_object/7,
         delete_namespaced_custom_object/7, delete_namespaced_custom_object/8,
         get_cluster_custom_object/5, get_cluster_custom_object/6,
         get_namespaced_custom_object/6, get_namespaced_custom_object/7,
         list_cluster_custom_object/4, list_cluster_custom_object/5,
         list_namespaced_custom_object/5, list_namespaced_custom_object/6,
         replace_cluster_custom_object/6, replace_cluster_custom_object/7,
         replace_namespaced_custom_object/7, replace_namespaced_custom_object/8]).

-define(BASE_URL, "").

%% @doc 
%% Creates a cluster scoped Custom object
-spec create_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_cluster_custom_object(Ctx, Group, Version, Plural, Body) ->
    create_cluster_custom_object(Ctx, Group, Version, Plural, Body, #{}).

-spec create_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), maps:map(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_cluster_custom_object(Ctx, Group, Version, Plural, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/", Group, "/", Version, "/", Plural, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% Creates a namespace scoped Custom object
-spec create_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Body) ->
    create_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Body, #{}).

-spec create_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
create_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = post,
    Path = ["/apis/", Group, "/", Version, "/namespaces/", Namespace, "/", Plural, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% Deletes the specified cluster scoped custom object
-spec delete_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_cluster_custom_object(Ctx, Group, Version, Plural, Name, Body) ->
    delete_cluster_custom_object(Ctx, Group, Version, Plural, Name, Body, #{}).

-spec delete_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_cluster_custom_object(Ctx, Group, Version, Plural, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/", Group, "/", Version, "/", Plural, "/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% Deletes the specified namespace scoped custom object
-spec delete_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, Body) ->
    delete_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, Body, #{}).

-spec delete_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), kuberl_v1_delete_options:kuberl_v1_delete_options(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
delete_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = delete,
    Path = ["/apis/", Group, "/", Version, "/namespaces/", Namespace, "/", Plural, "/", Name, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['gracePeriodSeconds', 'orphanDependents', 'propagationPolicy'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% Returns a cluster scoped custom object
-spec get_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_cluster_custom_object(Ctx, Group, Version, Plural, Name) ->
    get_cluster_custom_object(Ctx, Group, Version, Plural, Name, #{}).

-spec get_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_cluster_custom_object(Ctx, Group, Version, Plural, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/", Group, "/", Version, "/", Plural, "/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% Returns a namespace scoped custom object
-spec get_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), binary()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name) ->
    get_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, #{}).

-spec get_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/", Group, "/", Version, "/namespaces/", Namespace, "/", Plural, "/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch cluster scoped custom objects
-spec list_cluster_custom_object(ctx:ctx(), binary(), binary(), binary()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_cluster_custom_object(Ctx, Group, Version, Plural) ->
    list_cluster_custom_object(Ctx, Group, Version, Plural, #{}).

-spec list_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_cluster_custom_object(Ctx, Group, Version, Plural, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/", Group, "/", Version, "/", Plural, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'labelSelector', 'resourceVersion', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% list or watch namespace scoped custom objects
-spec list_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural) ->
    list_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, #{}).

-spec list_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
list_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/apis/", Group, "/", Version, "/namespaces/", Namespace, "/", Plural, ""],
    QS = lists:flatten([])++kuberl_utils:optional_params(['pretty', 'labelSelector', 'resourceVersion', 'watch'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified cluster scoped custom object
-spec replace_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_cluster_custom_object(Ctx, Group, Version, Plural, Name, Body) ->
    replace_cluster_custom_object(Ctx, Group, Version, Plural, Name, Body, #{}).

-spec replace_cluster_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_cluster_custom_object(Ctx, Group, Version, Plural, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/", Group, "/", Version, "/", Plural, "/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).

%% @doc 
%% replace the specified namespace scoped custom object
-spec replace_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, Body) ->
    replace_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, Body, #{}).

-spec replace_namespaced_custom_object(ctx:ctx(), binary(), binary(), binary(), binary(), binary(), maps:map(), maps:map()) -> {ok, maps:map(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
replace_namespaced_custom_object(Ctx, Group, Version, Namespace, Plural, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = put,
    Path = ["/apis/", Group, "/", Version, "/namespaces/", Namespace, "/", Plural, "/", Name, ""],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = [{<<"Content-Type">>, <<"*/*">>}],
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


