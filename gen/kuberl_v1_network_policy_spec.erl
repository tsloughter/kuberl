-module(kuberl_v1_network_policy_spec).

-export([encode/1]).

-export_type([kuberl_v1_network_policy_spec/0]).

-type kuberl_v1_network_policy_spec() ::
    #{ 'egress' => list(),
       'ingress' => list(),
       'podSelector' := kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'policyTypes' => list()
     }.

encode(#{ 'egress' := Egress,
          'ingress' := Ingress,
          'podSelector' := PodSelector,
          'policyTypes' := PolicyTypes
        }) ->
    #{ 'egress' => Egress,
       'ingress' => Ingress,
       'podSelector' => PodSelector,
       'policyTypes' => PolicyTypes
     }.
