-module(kuberl_v1_config_map_env_source).

-export([encode/1]).

-export_type([kuberl_v1_config_map_env_source/0]).

-type kuberl_v1_config_map_env_source() ::
    #{ 'name' => binary(),
       'optional' => boolean()
     }.

encode(#{ 'name' := Name,
          'optional' := Optional
        }) ->
    #{ 'name' => Name,
       'optional' => Optional
     }.
