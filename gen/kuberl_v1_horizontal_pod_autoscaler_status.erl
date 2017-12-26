-module(kuberl_v1_horizontal_pod_autoscaler_status).

-export([encode/1]).

-export_type([kuberl_v1_horizontal_pod_autoscaler_status/0]).

-type kuberl_v1_horizontal_pod_autoscaler_status() ::
    #{ 'currentCPUUtilizationPercentage' => integer(),
       'currentReplicas' := integer(),
       'desiredReplicas' := integer(),
       'lastScaleTime' => kuberl_date_time:kuberl_date_time(),
       'observedGeneration' => integer()
     }.

encode(#{ 'currentCPUUtilizationPercentage' := CurrentCPUUtilizationPercentage,
          'currentReplicas' := CurrentReplicas,
          'desiredReplicas' := DesiredReplicas,
          'lastScaleTime' := LastScaleTime,
          'observedGeneration' := ObservedGeneration
        }) ->
    #{ 'currentCPUUtilizationPercentage' => CurrentCPUUtilizationPercentage,
       'currentReplicas' => CurrentReplicas,
       'desiredReplicas' => DesiredReplicas,
       'lastScaleTime' => LastScaleTime,
       'observedGeneration' => ObservedGeneration
     }.
