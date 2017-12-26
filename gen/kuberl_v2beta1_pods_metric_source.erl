-module(kuberl_v2beta1_pods_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta1_pods_metric_source/0]).

-type kuberl_v2beta1_pods_metric_source() ::
    #{ 'metricName' := binary(),
       'targetAverageValue' := binary()
     }.

encode(#{ 'metricName' := MetricName,
          'targetAverageValue' := TargetAverageValue
        }) ->
    #{ 'metricName' => MetricName,
       'targetAverageValue' => TargetAverageValue
     }.
