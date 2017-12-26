-module(kuberl_v1beta1_network_policy_egress_rule).

-export([encode/1]).

-export_type([kuberl_v1beta1_network_policy_egress_rule/0]).

-type kuberl_v1beta1_network_policy_egress_rule() ::
    #{ 'ports' => list(),
       'to' => list()
     }.

encode(#{ 'ports' := Ports,
          'to' := To
        }) ->
    #{ 'ports' => Ports,
       'to' => To
     }.
