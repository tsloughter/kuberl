-module(kuberl_v1_pod_status).

-export([encode/1]).

-export_type([kuberl_v1_pod_status/0]).

-type kuberl_v1_pod_status() ::
    #{ 'conditions' => list(),
       'containerStatuses' => list(),
       'ephemeralContainerStatuses' => list(),
       'hostIP' => binary(),
       'initContainerStatuses' => list(),
       'message' => binary(),
       'nominatedNodeName' => binary(),
       'phase' => binary(),
       'podIP' => binary(),
       'podIPs' => list(),
       'qosClass' => binary(),
       'reason' => binary(),
       'startTime' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'conditions' := Conditions,
          'containerStatuses' := ContainerStatuses,
          'ephemeralContainerStatuses' := EphemeralContainerStatuses,
          'hostIP' := HostIP,
          'initContainerStatuses' := InitContainerStatuses,
          'message' := Message,
          'nominatedNodeName' := NominatedNodeName,
          'phase' := Phase,
          'podIP' := PodIP,
          'podIPs' := PodIPs,
          'qosClass' := QosClass,
          'reason' := Reason,
          'startTime' := StartTime
        }) ->
    #{ 'conditions' => Conditions,
       'containerStatuses' => ContainerStatuses,
       'ephemeralContainerStatuses' => EphemeralContainerStatuses,
       'hostIP' => HostIP,
       'initContainerStatuses' => InitContainerStatuses,
       'message' => Message,
       'nominatedNodeName' => NominatedNodeName,
       'phase' => Phase,
       'podIP' => PodIP,
       'podIPs' => PodIPs,
       'qosClass' => QosClass,
       'reason' => Reason,
       'startTime' => StartTime
     }.
