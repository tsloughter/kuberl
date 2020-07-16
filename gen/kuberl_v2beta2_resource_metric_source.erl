-module(kuberl_v2beta2_resource_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta2_resource_metric_source/0]).

-type kuberl_v2beta2_resource_metric_source() ::
    #{ 'name' := binary(),
       'target' := kuberl_v2beta2_metric_target:kuberl_v2beta2_metric_target()
     }.

encode(#{ 'name' := Name,
          'target' := Target
        }) ->
    #{ 'name' => Name,
       'target' => Target
     }.
