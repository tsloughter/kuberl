-module(kuberl_v2beta2_metric_value_status).

-export([encode/1]).

-export_type([kuberl_v2beta2_metric_value_status/0]).

-type kuberl_v2beta2_metric_value_status() ::
    #{ 'averageUtilization' => integer(),
       'averageValue' => binary(),
       'value' => binary()
     }.

encode(#{ 'averageUtilization' := AverageUtilization,
          'averageValue' := AverageValue,
          'value' := Value
        }) ->
    #{ 'averageUtilization' => AverageUtilization,
       'averageValue' => AverageValue,
       'value' => Value
     }.
