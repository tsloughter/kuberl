-module(kuberl_networking_v1beta1_ingress_status).

-export([encode/1]).

-export_type([kuberl_networking_v1beta1_ingress_status/0]).

-type kuberl_networking_v1beta1_ingress_status() ::
    #{ 'loadBalancer' => kuberl_v1_load_balancer_status:kuberl_v1_load_balancer_status()
     }.

encode(#{ 'loadBalancer' := LoadBalancer
        }) ->
    #{ 'loadBalancer' => LoadBalancer
     }.
