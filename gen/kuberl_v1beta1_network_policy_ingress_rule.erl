-module(kuberl_v1beta1_network_policy_ingress_rule).

-export([encode/1]).

-export_type([kuberl_v1beta1_network_policy_ingress_rule/0]).

-type kuberl_v1beta1_network_policy_ingress_rule() ::
    #{ 'from' => list(),
       'ports' => list()
     }.

encode(#{ 'from' := From,
          'ports' := Ports
        }) ->
    #{ 'from' => From,
       'ports' => Ports
     }.
