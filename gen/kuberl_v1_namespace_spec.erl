-module(kuberl_v1_namespace_spec).

-export([encode/1]).

-export_type([kuberl_v1_namespace_spec/0]).

-type kuberl_v1_namespace_spec() ::
    #{ 'finalizers' => list()
     }.

encode(#{ 'finalizers' := Finalizers
        }) ->
    #{ 'finalizers' => Finalizers
     }.
