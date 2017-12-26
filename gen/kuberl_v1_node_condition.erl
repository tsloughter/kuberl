-module(kuberl_v1_node_condition).

-export([encode/1]).

-export_type([kuberl_v1_node_condition/0]).

-type kuberl_v1_node_condition() ::
    #{ 'lastHeartbeatTime' => kuberl_date_time:kuberl_date_time(),
       'lastTransitionTime' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'reason' => binary(),
       'status' := binary(),
       'type' := binary()
     }.

encode(#{ 'lastHeartbeatTime' := LastHeartbeatTime,
          'lastTransitionTime' := LastTransitionTime,
          'message' := Message,
          'reason' := Reason,
          'status' := Status,
          'type' := Type
        }) ->
    #{ 'lastHeartbeatTime' => LastHeartbeatTime,
       'lastTransitionTime' => LastTransitionTime,
       'message' => Message,
       'reason' => Reason,
       'status' => Status,
       'type' => Type
     }.
