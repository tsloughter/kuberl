-module(kuberl).

-export([new_cfg/0,
         update_cfg/1,
         cfg_with_bearer_token/1,
         cfg_with_bearer_token/2,
         cfg_with_host/1,
         cfg_with_host/2,
         update_default_cfg/1,
         set_default_cfg/0,
         set_default_cfg/1]).

new_cfg() ->
    #{host => application:get_env(kuberl, host, "localhost:8001"),
      hackney_opts => [{ssl_options, [{server_name_indication, disable}]}],
      auth => auth(),
      api_key_prefix => #{<<"authorization">> => <<"Bearer">>}}.

auth() ->
    #{'BearerToken' => application:get_env(kuberl, api_key, undefined)}.

cfg_with_bearer_token(Token) ->
    cfg_with_bearer_token(new_cfg(), Token).

cfg_with_bearer_token(Cfg, Token) when is_binary(Token) ->
    maps:merge(Cfg, #{auth => #{'BearerToken' => Token},
                      api_key_prefix => #{<<"authorization">> => <<"Bearer">>}}).

cfg_with_host(Host) ->
    cfg_with_host(new_cfg(), Host).

cfg_with_host(Cfg, Host) ->
    maps:merge(Cfg, #{host => Host}).

%% Update a default config with values in the map argument
update_cfg(Map) ->
    maps:merge(new_cfg(), Map).

update_default_cfg(Map) ->
    set_default_cfg(maps:merge(new_cfg(), Map)).

set_default_cfg() ->
    set_default_cfg(new_cfg()).

set_default_cfg(Cfg) ->
    application:set_env(kuberl, config, Cfg).
