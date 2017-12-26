-module(kuberl_v1_persistent_volume_claim_status).

-export([encode/1]).

-export_type([kuberl_v1_persistent_volume_claim_status/0]).

-type kuberl_v1_persistent_volume_claim_status() ::
    #{ 'accessModes' => list(),
       'capacity' => maps:map(),
       'conditions' => list(),
       'phase' => binary()
     }.

encode(#{ 'accessModes' := AccessModes,
          'capacity' := Capacity,
          'conditions' := Conditions,
          'phase' := Phase
        }) ->
    #{ 'accessModes' => AccessModes,
       'capacity' => Capacity,
       'conditions' => Conditions,
       'phase' => Phase
     }.
