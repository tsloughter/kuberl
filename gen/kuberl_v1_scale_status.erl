-module(kuberl_v1_scale_status).

-export([encode/1]).

-export_type([kuberl_v1_scale_status/0]).

-type kuberl_v1_scale_status() ::
    #{ 'replicas' := integer(),
       'selector' => binary()
     }.

encode(#{ 'replicas' := Replicas,
          'selector' := Selector
        }) ->
    #{ 'replicas' => Replicas,
       'selector' => Selector
     }.
