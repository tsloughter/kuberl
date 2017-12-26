-module(kuberl_v1_limit_range_item).

-export([encode/1]).

-export_type([kuberl_v1_limit_range_item/0]).

-type kuberl_v1_limit_range_item() ::
    #{ 'default' => maps:map(),
       'defaultRequest' => maps:map(),
       'max' => maps:map(),
       'maxLimitRequestRatio' => maps:map(),
       'min' => maps:map(),
       'type' => binary()
     }.

encode(#{ 'default' := Default,
          'defaultRequest' := DefaultRequest,
          'max' := Max,
          'maxLimitRequestRatio' := MaxLimitRequestRatio,
          'min' := Min,
          'type' := Type
        }) ->
    #{ 'default' => Default,
       'defaultRequest' => DefaultRequest,
       'max' => Max,
       'maxLimitRequestRatio' => MaxLimitRequestRatio,
       'min' => Min,
       'type' => Type
     }.
