-module(kuberl_v1beta2_scale_spec).

-export([encode/1]).

-export_type([kuberl_v1beta2_scale_spec/0]).

-type kuberl_v1beta2_scale_spec() ::
    #{ 'replicas' => integer()
     }.

encode(#{ 'replicas' := Replicas
        }) ->
    #{ 'replicas' => Replicas
     }.
