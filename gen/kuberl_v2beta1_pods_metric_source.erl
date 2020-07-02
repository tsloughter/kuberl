-module(kuberl_v2beta1_pods_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta1_pods_metric_source/0]).

-type kuberl_v2beta1_pods_metric_source() ::
    #{ 'metricName' := binary(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'targetAverageValue' := binary()
     }.

encode(#{ 'metricName' := MetricName,
          'selector' := Selector,
          'targetAverageValue' := TargetAverageValue
        }) ->
    #{ 'metricName' => MetricName,
       'selector' => Selector,
       'targetAverageValue' => TargetAverageValue
     }.
