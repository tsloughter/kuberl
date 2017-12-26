-module(kuberl_extensions_v1beta1_scale_spec).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_scale_spec/0]).

-type kuberl_extensions_v1beta1_scale_spec() ::
    #{ 'replicas' => integer()
     }.

encode(#{ 'replicas' := Replicas
        }) ->
    #{ 'replicas' => Replicas
     }.
