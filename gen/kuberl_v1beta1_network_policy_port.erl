-module(kuberl_v1beta1_network_policy_port).

-export([encode/1]).

-export_type([kuberl_v1beta1_network_policy_port/0]).

-type kuberl_v1beta1_network_policy_port() ::
    #{ 'port' => maps:map(),
       'protocol' => binary()
     }.

encode(#{ 'port' := Port,
          'protocol' := Protocol
        }) ->
    #{ 'port' => Port,
       'protocol' => Protocol
     }.
