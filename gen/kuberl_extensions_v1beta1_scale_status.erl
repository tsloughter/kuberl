-module(kuberl_extensions_v1beta1_scale_status).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_scale_status/0]).

-type kuberl_extensions_v1beta1_scale_status() ::
    #{ 'replicas' := integer(),
       'selector' => maps:map(),
       'targetSelector' => binary()
     }.

encode(#{ 'replicas' := Replicas,
          'selector' := Selector,
          'targetSelector' := TargetSelector
        }) ->
    #{ 'replicas' => Replicas,
       'selector' => Selector,
       'targetSelector' => TargetSelector
     }.
