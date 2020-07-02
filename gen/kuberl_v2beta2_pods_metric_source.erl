-module(kuberl_v2beta2_pods_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta2_pods_metric_source/0]).

-type kuberl_v2beta2_pods_metric_source() ::
    #{ 'metric' := kuberl_v2beta2_metric_identifier:kuberl_v2beta2_metric_identifier(),
       'target' := kuberl_v2beta2_metric_target:kuberl_v2beta2_metric_target()
     }.

encode(#{ 'metric' := Metric,
          'target' := Target
        }) ->
    #{ 'metric' => Metric,
       'target' => Target
     }.
