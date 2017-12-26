-module(kuberl_v1_load_balancer_ingress).

-export([encode/1]).

-export_type([kuberl_v1_load_balancer_ingress/0]).

-type kuberl_v1_load_balancer_ingress() ::
    #{ 'hostname' => binary(),
       'ip' => binary()
     }.

encode(#{ 'hostname' := Hostname,
          'ip' := Ip
        }) ->
    #{ 'hostname' => Hostname,
       'ip' => Ip
     }.
