-module(kuberl_v2beta1_object_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_object_metric_status/0]).

-type kuberl_v2beta1_object_metric_status() ::
    #{ 'averageValue' => binary(),
       'currentValue' := binary(),
       'metricName' := binary(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'target' := kuberl_v2beta1_cross_version_object_reference:kuberl_v2beta1_cross_version_object_reference()
     }.

encode(#{ 'averageValue' := AverageValue,
          'currentValue' := CurrentValue,
          'metricName' := MetricName,
          'selector' := Selector,
          'target' := Target
        }) ->
    #{ 'averageValue' => AverageValue,
       'currentValue' => CurrentValue,
       'metricName' => MetricName,
       'selector' => Selector,
       'target' => Target
     }.
