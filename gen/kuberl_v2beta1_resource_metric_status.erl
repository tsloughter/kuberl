-module(kuberl_v2beta1_resource_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_resource_metric_status/0]).

-type kuberl_v2beta1_resource_metric_status() ::
    #{ 'currentAverageUtilization' => integer(),
       'currentAverageValue' := binary(),
       'name' := binary()
     }.

encode(#{ 'currentAverageUtilization' := CurrentAverageUtilization,
          'currentAverageValue' := CurrentAverageValue,
          'name' := Name
        }) ->
    #{ 'currentAverageUtilization' => CurrentAverageUtilization,
       'currentAverageValue' => CurrentAverageValue,
       'name' => Name
     }.
