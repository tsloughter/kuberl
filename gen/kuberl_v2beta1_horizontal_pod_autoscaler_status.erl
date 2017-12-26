-module(kuberl_v2beta1_horizontal_pod_autoscaler_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_horizontal_pod_autoscaler_status/0]).

-type kuberl_v2beta1_horizontal_pod_autoscaler_status() ::
    #{ 'conditions' := list(),
       'currentMetrics' := list(),
       'currentReplicas' := integer(),
       'desiredReplicas' := integer(),
       'lastScaleTime' => kuberl_date_time:kuberl_date_time(),
       'observedGeneration' => integer()
     }.

encode(#{ 'conditions' := Conditions,
          'currentMetrics' := CurrentMetrics,
          'currentReplicas' := CurrentReplicas,
          'desiredReplicas' := DesiredReplicas,
          'lastScaleTime' := LastScaleTime,
          'observedGeneration' := ObservedGeneration
        }) ->
    #{ 'conditions' => Conditions,
       'currentMetrics' => CurrentMetrics,
       'currentReplicas' => CurrentReplicas,
       'desiredReplicas' => DesiredReplicas,
       'lastScaleTime' => LastScaleTime,
       'observedGeneration' => ObservedGeneration
     }.
