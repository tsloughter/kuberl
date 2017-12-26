-module(kuberl_v1_load_balancer_status).

-export([encode/1]).

-export_type([kuberl_v1_load_balancer_status/0]).

-type kuberl_v1_load_balancer_status() ::
    #{ 'ingress' => list()
     }.

encode(#{ 'ingress' := Ingress
        }) ->
    #{ 'ingress' => Ingress
     }.
