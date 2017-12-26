-module(kuberl_v1_persistent_volume_status).

-export([encode/1]).

-export_type([kuberl_v1_persistent_volume_status/0]).

-type kuberl_v1_persistent_volume_status() ::
    #{ 'message' => binary(),
       'phase' => binary(),
       'reason' => binary()
     }.

encode(#{ 'message' := Message,
          'phase' := Phase,
          'reason' := Reason
        }) ->
    #{ 'message' => Message,
       'phase' => Phase,
       'reason' => Reason
     }.
