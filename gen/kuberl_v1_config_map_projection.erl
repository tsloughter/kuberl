-module(kuberl_v1_config_map_projection).

-export([encode/1]).

-export_type([kuberl_v1_config_map_projection/0]).

-type kuberl_v1_config_map_projection() ::
    #{ 'items' => list(),
       'name' => binary(),
       'optional' => boolean()
     }.

encode(#{ 'items' := Items,
          'name' := Name,
          'optional' := Optional
        }) ->
    #{ 'items' => Items,
       'name' => Name,
       'optional' => Optional
     }.
