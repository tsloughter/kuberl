-module(kuberl_v1beta1_network_policy_peer).

-export([encode/1]).

-export_type([kuberl_v1beta1_network_policy_peer/0]).

-type kuberl_v1beta1_network_policy_peer() ::
    #{ 'ipBlock' => kuberl_v1beta1_ip_block:kuberl_v1beta1_ip_block(),
       'namespaceSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'podSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector()
     }.

encode(#{ 'ipBlock' := IpBlock,
          'namespaceSelector' := NamespaceSelector,
          'podSelector' := PodSelector
        }) ->
    #{ 'ipBlock' => IpBlock,
       'namespaceSelector' => NamespaceSelector,
       'podSelector' => PodSelector
     }.
