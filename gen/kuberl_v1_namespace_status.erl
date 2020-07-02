-module(kuberl_v1_namespace_status).

-export([encode/1]).

-export_type([kuberl_v1_namespace_status/0]).

-type kuberl_v1_namespace_status() ::
    #{ 'conditions' => list(),
       'phase' => binary()
     }.

encode(#{ 'conditions' := Conditions,
          'phase' := Phase
        }) ->
    #{ 'conditions' => Conditions,
       'phase' => Phase
     }.
