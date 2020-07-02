-module(kuberl_networking_v1beta1_ingress_tls).

-export([encode/1]).

-export_type([kuberl_networking_v1beta1_ingress_tls/0]).

-type kuberl_networking_v1beta1_ingress_tls() ::
    #{ 'hosts' => list(),
       'secretName' => binary()
     }.

encode(#{ 'hosts' := Hosts,
          'secretName' := SecretName
        }) ->
    #{ 'hosts' => Hosts,
       'secretName' => SecretName
     }.
