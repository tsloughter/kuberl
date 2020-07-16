-module(kuberl_v2beta2_object_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta2_object_metric_source/0]).

-type kuberl_v2beta2_object_metric_source() ::
    #{ 'describedObject' := kuberl_v2beta2_cross_version_object_reference:kuberl_v2beta2_cross_version_object_reference(),
       'metric' := kuberl_v2beta2_metric_identifier:kuberl_v2beta2_metric_identifier(),
       'target' := kuberl_v2beta2_metric_target:kuberl_v2beta2_metric_target()
     }.

encode(#{ 'describedObject' := DescribedObject,
          'metric' := Metric,
          'target' := Target
        }) ->
    #{ 'describedObject' => DescribedObject,
       'metric' => Metric,
       'target' => Target
     }.
