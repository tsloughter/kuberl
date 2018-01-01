-module(kuberl_version_api).

-export([get_code/1, get_code/2]).

-define(BASE_URL, "").

%% @doc 
%% get the code version
-spec get_code(ctx:ctx()) -> {ok, kuberl_version_info:kuberl_version_info(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_code(Ctx) ->
    get_code(Ctx, #{}).

-spec get_code(ctx:ctx(), maps:map()) -> {ok, kuberl_version_info:kuberl_version_info(), kuberl_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), kuberl_utils:response_info()}.
get_code(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),

    Method = get,
    Path = ["/version/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = kuberl_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    kuberl_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts).


