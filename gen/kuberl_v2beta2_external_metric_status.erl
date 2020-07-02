-module(kuberl_v2beta2_external_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta2_external_metric_status/0]).

-type kuberl_v2beta2_external_metric_status() ::
    #{ 'current' := kuberl_v2beta2_metric_value_status:kuberl_v2beta2_metric_value_status(),
       'metric' := kuberl_v2beta2_metric_identifier:kuberl_v2beta2_metric_identifier()
     }.

encode(#{ 'current' := Current,
          'metric' := Metric
        }) ->
    #{ 'current' => Current,
       'metric' => Metric
     }.
