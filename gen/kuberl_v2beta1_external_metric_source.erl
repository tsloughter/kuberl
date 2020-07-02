-module(kuberl_v2beta1_external_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta1_external_metric_source/0]).

-type kuberl_v2beta1_external_metric_source() ::
    #{ 'metricName' := binary(),
       'metricSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'targetAverageValue' => binary(),
       'targetValue' => binary()
     }.

encode(#{ 'metricName' := MetricName,
          'metricSelector' := MetricSelector,
          'targetAverageValue' := TargetAverageValue,
          'targetValue' := TargetValue
        }) ->
    #{ 'metricName' => MetricName,
       'metricSelector' => MetricSelector,
       'targetAverageValue' => TargetAverageValue,
       'targetValue' => TargetValue
     }.
