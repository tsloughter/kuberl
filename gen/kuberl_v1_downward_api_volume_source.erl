-module(kuberl_v1_downward_api_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_downward_api_volume_source/0]).

-type kuberl_v1_downward_api_volume_source() ::
    #{ 'defaultMode' => integer(),
       'items' => list()
     }.

encode(#{ 'defaultMode' := DefaultMode,
          'items' := Items
        }) ->
    #{ 'defaultMode' => DefaultMode,
       'items' => Items
     }.
