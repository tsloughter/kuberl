-module(kuberl_v2beta1_pods_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_pods_metric_status/0]).

-type kuberl_v2beta1_pods_metric_status() ::
    #{ 'currentAverageValue' := binary(),
       'metricName' := binary(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector()
     }.

encode(#{ 'currentAverageValue' := CurrentAverageValue,
          'metricName' := MetricName,
          'selector' := Selector
        }) ->
    #{ 'currentAverageValue' => CurrentAverageValue,
       'metricName' => MetricName,
       'selector' => Selector
     }.
