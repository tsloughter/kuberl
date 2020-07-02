-module(kuberl_v1alpha1_endpoint_conditions).

-export([encode/1]).

-export_type([kuberl_v1alpha1_endpoint_conditions/0]).

-type kuberl_v1alpha1_endpoint_conditions() ::
    #{ 'ready' => boolean()
     }.

encode(#{ 'ready' := Ready
        }) ->
    #{ 'ready' => Ready
     }.
