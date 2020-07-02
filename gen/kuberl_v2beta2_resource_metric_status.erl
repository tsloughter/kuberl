-module(kuberl_v2beta2_resource_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta2_resource_metric_status/0]).

-type kuberl_v2beta2_resource_metric_status() ::
    #{ 'current' := kuberl_v2beta2_metric_value_status:kuberl_v2beta2_metric_value_status(),
       'name' := binary()
     }.

encode(#{ 'current' := Current,
          'name' := Name
        }) ->
    #{ 'current' => Current,
       'name' => Name
     }.
