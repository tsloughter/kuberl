-module(kuberl_v2beta2_metric_target).

-export([encode/1]).

-export_type([kuberl_v2beta2_metric_target/0]).

-type kuberl_v2beta2_metric_target() ::
    #{ 'averageUtilization' => integer(),
       'averageValue' => binary(),
       'type' := binary(),
       'value' => binary()
     }.

encode(#{ 'averageUtilization' := AverageUtilization,
          'averageValue' := AverageValue,
          'type' := Type,
          'value' := Value
        }) ->
    #{ 'averageUtilization' => AverageUtilization,
       'averageValue' => AverageValue,
       'type' => Type,
       'value' => Value
     }.
