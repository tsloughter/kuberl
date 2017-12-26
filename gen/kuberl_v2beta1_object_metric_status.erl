-module(kuberl_v2beta1_object_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_object_metric_status/0]).

-type kuberl_v2beta1_object_metric_status() ::
    #{ 'currentValue' := binary(),
       'metricName' := binary(),
       'target' := kuberl_v2beta1_cross_version_object_reference:kuberl_v2beta1_cross_version_object_reference()
     }.

encode(#{ 'currentValue' := CurrentValue,
          'metricName' := MetricName,
          'target' := Target
        }) ->
    #{ 'currentValue' => CurrentValue,
       'metricName' => MetricName,
       'target' => Target
     }.
