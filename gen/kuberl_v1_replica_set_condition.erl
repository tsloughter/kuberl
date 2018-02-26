-module(kuberl_v1_replica_set_condition).

-export([encode/1]).

-export_type([kuberl_v1_replica_set_condition/0]).

-type kuberl_v1_replica_set_condition() ::
    #{ 'lastTransitionTime' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'reason' => binary(),
       'status' := binary(),
       'type' := binary()
     }.

encode(#{ 'lastTransitionTime' := LastTransitionTime,
          'message' := Message,
          'reason' := Reason,
          'status' := Status,
          'type' := Type
        }) ->
    #{ 'lastTransitionTime' => LastTransitionTime,
       'message' => Message,
       'reason' => Reason,
       'status' => Status,
       'type' => Type
     }.
