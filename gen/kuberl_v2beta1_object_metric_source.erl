-module(kuberl_v2beta1_object_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta1_object_metric_source/0]).

-type kuberl_v2beta1_object_metric_source() ::
    #{ 'metricName' := binary(),
       'target' := kuberl_v2beta1_cross_version_object_reference:kuberl_v2beta1_cross_version_object_reference(),
       'targetValue' := binary()
     }.

encode(#{ 'metricName' := MetricName,
          'target' := Target,
          'targetValue' := TargetValue
        }) ->
    #{ 'metricName' => MetricName,
       'target' => Target,
       'targetValue' => TargetValue
     }.
