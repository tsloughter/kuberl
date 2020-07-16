-module(kuberl_v2beta2_horizontal_pod_autoscaler_spec).

-export([encode/1]).

-export_type([kuberl_v2beta2_horizontal_pod_autoscaler_spec/0]).

-type kuberl_v2beta2_horizontal_pod_autoscaler_spec() ::
    #{ 'maxReplicas' := integer(),
       'metrics' => list(),
       'minReplicas' => integer(),
       'scaleTargetRef' := kuberl_v2beta2_cross_version_object_reference:kuberl_v2beta2_cross_version_object_reference()
     }.

encode(#{ 'maxReplicas' := MaxReplicas,
          'metrics' := Metrics,
          'minReplicas' := MinReplicas,
          'scaleTargetRef' := ScaleTargetRef
        }) ->
    #{ 'maxReplicas' => MaxReplicas,
       'metrics' => Metrics,
       'minReplicas' => MinReplicas,
       'scaleTargetRef' => ScaleTargetRef
     }.
