%% @doc: Kubernetes Erlang client
%%
-module(kuberl).

%% API
-export([new_cfg/0,
         update_cfg/1,
         update_cfg/2,
         cfg_with_bearer_token/1,
         cfg_with_bearer_token/2,
         cfg_with_host/1,
         cfg_with_host/2,
         update_default_cfg/1,
         set_default_cfg/0,
         set_default_cfg/1]).

-type cfg() :: map().

%% @doc The default config.
-spec new_cfg() -> cfg().
new_cfg() ->
    #{host => application:get_env(kuberl, host, "localhost:8001"),
      hackney_opts => [{ssl_options, [{server_name_indication, disable}]}],
      auth => auth(),
      api_key_prefix => #{<<"authorization">> => <<"Bearer">>}}.

-spec auth() -> map().
auth() ->
    #{'BearerToken' => application:get_env(kuberl, api_key, undefined)}.

%% @equiv cfg_with_bearer_token(new_cfg(), Token)
%% @doc Create a config using a given bearer `Token'.
-spec cfg_with_bearer_token(binary()) -> cfg().
cfg_with_bearer_token(Token) ->
    cfg_with_bearer_token(new_cfg(), Token).

%% @doc Add a bearer `Token' to a given config.
-spec cfg_with_bearer_token(cfg(), binary()) -> cfg().
cfg_with_bearer_token(Cfg, Token) when is_binary(Token) ->
    maps:merge(Cfg, #{auth => #{'BearerToken' => Token},
                      api_key_prefix => #{<<"authorization">> => <<"Bearer">>}}).

%% @equiv cfg_with_host(new_cfg(), Host)
%% @doc Create a config with a given `Host'.
-spec cfg_with_host(string()) -> cfg().
cfg_with_host(Host) ->
    cfg_with_host(new_cfg(), Host).

%% @doc Add a bearer `Token' to a given config.
-spec cfg_with_host(cfg(), string()) -> cfg().
cfg_with_host(Cfg, Host) ->
    update_cfg(Cfg, #{host => Host}).

%% @equiv update_cfg(new_cfg(), Map)
%% @doc Update a default config with values in `Map'.
-spec update_cfg(map()) -> cfg().
update_cfg(Map) ->
    update_cfg(new_cfg(), Map).

%% @doc Update a config with values in `Map'.
-spec update_cfg(cfg(), map()) -> cfg().
update_cfg(Cfg, Map) ->
    maps:merge(Cfg, Map).

%% @doc Update and set the default config with values in `Map'.
-spec update_default_cfg(map()) -> ok.
update_default_cfg(Map) ->
    set_default_cfg(maps:merge(new_cfg(), Map)).

%% @equiv set_default_cfg(new_cfg())
-spec set_default_cfg() -> ok.
set_default_cfg() ->
    set_default_cfg(new_cfg()).

%% @doc Set the default config to `Cfg'.
-spec set_default_cfg(cfg()) -> ok.
set_default_cfg(Cfg) ->
    application:set_env(kuberl, config, Cfg).
