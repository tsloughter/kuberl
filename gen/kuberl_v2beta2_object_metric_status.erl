-module(kuberl_v2beta2_object_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta2_object_metric_status/0]).

-type kuberl_v2beta2_object_metric_status() ::
    #{ 'current' := kuberl_v2beta2_metric_value_status:kuberl_v2beta2_metric_value_status(),
       'describedObject' := kuberl_v2beta2_cross_version_object_reference:kuberl_v2beta2_cross_version_object_reference(),
       'metric' := kuberl_v2beta2_metric_identifier:kuberl_v2beta2_metric_identifier()
     }.

encode(#{ 'current' := Current,
          'describedObject' := DescribedObject,
          'metric' := Metric
        }) ->
    #{ 'current' => Current,
       'describedObject' => DescribedObject,
       'metric' => Metric
     }.
