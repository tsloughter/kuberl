-module(kuberl_v2beta1_pods_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_pods_metric_status/0]).

-type kuberl_v2beta1_pods_metric_status() ::
    #{ 'currentAverageValue' := binary(),
       'metricName' := binary()
     }.

encode(#{ 'currentAverageValue' := CurrentAverageValue,
          'metricName' := MetricName
        }) ->
    #{ 'currentAverageValue' => CurrentAverageValue,
       'metricName' => MetricName
     }.
