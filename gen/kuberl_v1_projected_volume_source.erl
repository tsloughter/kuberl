-module(kuberl_v1_projected_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_projected_volume_source/0]).

-type kuberl_v1_projected_volume_source() ::
    #{ 'defaultMode' => integer(),
       'sources' := list()
     }.

encode(#{ 'defaultMode' := DefaultMode,
          'sources' := Sources
        }) ->
    #{ 'defaultMode' => DefaultMode,
       'sources' => Sources
     }.
