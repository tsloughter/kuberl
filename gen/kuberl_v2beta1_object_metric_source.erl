-module(kuberl_v2beta1_object_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta1_object_metric_source/0]).

-type kuberl_v2beta1_object_metric_source() ::
    #{ 'averageValue' => binary(),
       'metricName' := binary(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'target' := kuberl_v2beta1_cross_version_object_reference:kuberl_v2beta1_cross_version_object_reference(),
       'targetValue' := binary()
     }.

encode(#{ 'averageValue' := AverageValue,
          'metricName' := MetricName,
          'selector' := Selector,
          'target' := Target,
          'targetValue' := TargetValue
        }) ->
    #{ 'averageValue' => AverageValue,
       'metricName' => MetricName,
       'selector' => Selector,
       'target' => Target,
       'targetValue' => TargetValue
     }.
