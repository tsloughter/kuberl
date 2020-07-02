-module(kuberl_v2beta1_external_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_external_metric_status/0]).

-type kuberl_v2beta1_external_metric_status() ::
    #{ 'currentAverageValue' => binary(),
       'currentValue' := binary(),
       'metricName' := binary(),
       'metricSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector()
     }.

encode(#{ 'currentAverageValue' := CurrentAverageValue,
          'currentValue' := CurrentValue,
          'metricName' := MetricName,
          'metricSelector' := MetricSelector
        }) ->
    #{ 'currentAverageValue' => CurrentAverageValue,
       'currentValue' => CurrentValue,
       'metricName' => MetricName,
       'metricSelector' => MetricSelector
     }.
