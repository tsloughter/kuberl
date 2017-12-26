-module(kuberl_v1_horizontal_pod_autoscaler_spec).

-export([encode/1]).

-export_type([kuberl_v1_horizontal_pod_autoscaler_spec/0]).

-type kuberl_v1_horizontal_pod_autoscaler_spec() ::
    #{ 'maxReplicas' := integer(),
       'minReplicas' => integer(),
       'scaleTargetRef' := kuberl_v1_cross_version_object_reference:kuberl_v1_cross_version_object_reference(),
       'targetCPUUtilizationPercentage' => integer()
     }.

encode(#{ 'maxReplicas' := MaxReplicas,
          'minReplicas' := MinReplicas,
          'scaleTargetRef' := ScaleTargetRef,
          'targetCPUUtilizationPercentage' := TargetCPUUtilizationPercentage
        }) ->
    #{ 'maxReplicas' => MaxReplicas,
       'minReplicas' => MinReplicas,
       'scaleTargetRef' => ScaleTargetRef,
       'targetCPUUtilizationPercentage' => TargetCPUUtilizationPercentage
     }.
