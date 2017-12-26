-module(kuberl_v1_container_state_waiting).

-export([encode/1]).

-export_type([kuberl_v1_container_state_waiting/0]).

-type kuberl_v1_container_state_waiting() ::
    #{ 'message' => binary(),
       'reason' => binary()
     }.

encode(#{ 'message' := Message,
          'reason' := Reason
        }) ->
    #{ 'message' => Message,
       'reason' => Reason
     }.
