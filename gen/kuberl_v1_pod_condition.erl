-module(kuberl_v1_pod_condition).

-export([encode/1]).

-export_type([kuberl_v1_pod_condition/0]).

-type kuberl_v1_pod_condition() ::
    #{ 'lastProbeTime' => kuberl_date_time:kuberl_date_time(),
       'lastTransitionTime' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'reason' => binary(),
       'status' := binary(),
       'type' := binary()
     }.

encode(#{ 'lastProbeTime' := LastProbeTime,
          'lastTransitionTime' := LastTransitionTime,
          'message' := Message,
          'reason' := Reason,
          'status' := Status,
          'type' := Type
        }) ->
    #{ 'lastProbeTime' => LastProbeTime,
       'lastTransitionTime' => LastTransitionTime,
       'message' => Message,
       'reason' => Reason,
       'status' => Status,
       'type' => Type
     }.
