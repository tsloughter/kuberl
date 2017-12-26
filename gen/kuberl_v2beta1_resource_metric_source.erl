-module(kuberl_v2beta1_resource_metric_source).

-export([encode/1]).

-export_type([kuberl_v2beta1_resource_metric_source/0]).

-type kuberl_v2beta1_resource_metric_source() ::
    #{ 'name' := binary(),
       'targetAverageUtilization' => integer(),
       'targetAverageValue' => binary()
     }.

encode(#{ 'name' := Name,
          'targetAverageUtilization' := TargetAverageUtilization,
          'targetAverageValue' := TargetAverageValue
        }) ->
    #{ 'name' => Name,
       'targetAverageUtilization' => TargetAverageUtilization,
       'targetAverageValue' => TargetAverageValue
     }.
