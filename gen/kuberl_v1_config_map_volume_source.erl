-module(kuberl_v1_config_map_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_config_map_volume_source/0]).

-type kuberl_v1_config_map_volume_source() ::
    #{ 'defaultMode' => integer(),
       'items' => list(),
       'name' => binary(),
       'optional' => boolean()
     }.

encode(#{ 'defaultMode' := DefaultMode,
          'items' := Items,
          'name' := Name,
          'optional' := Optional
        }) ->
    #{ 'defaultMode' => DefaultMode,
       'items' => Items,
       'name' => Name,
       'optional' => Optional
     }.
