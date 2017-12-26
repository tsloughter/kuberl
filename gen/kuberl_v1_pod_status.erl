-module(kuberl_v1_pod_status).

-export([encode/1]).

-export_type([kuberl_v1_pod_status/0]).

-type kuberl_v1_pod_status() ::
    #{ 'conditions' => list(),
       'containerStatuses' => list(),
       'hostIP' => binary(),
       'initContainerStatuses' => list(),
       'message' => binary(),
       'phase' => binary(),
       'podIP' => binary(),
       'qosClass' => binary(),
       'reason' => binary(),
       'startTime' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'conditions' := Conditions,
          'containerStatuses' := ContainerStatuses,
          'hostIP' := HostIP,
          'initContainerStatuses' := InitContainerStatuses,
          'message' := Message,
          'phase' := Phase,
          'podIP' := PodIP,
          'qosClass' := QosClass,
          'reason' := Reason,
          'startTime' := StartTime
        }) ->
    #{ 'conditions' => Conditions,
       'containerStatuses' => ContainerStatuses,
       'hostIP' => HostIP,
       'initContainerStatuses' => InitContainerStatuses,
       'message' => Message,
       'phase' => Phase,
       'podIP' => PodIP,
       'qosClass' => QosClass,
       'reason' => Reason,
       'startTime' => StartTime
     }.
