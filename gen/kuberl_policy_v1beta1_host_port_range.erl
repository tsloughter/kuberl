-module(kuberl_policy_v1beta1_host_port_range).

-export([encode/1]).

-export_type([kuberl_policy_v1beta1_host_port_range/0]).

-type kuberl_policy_v1beta1_host_port_range() ::
    #{ 'max' := integer(),
       'min' := integer()
     }.

encode(#{ 'max' := Max,
          'min' := Min
        }) ->
    #{ 'max' => Max,
       'min' => Min
     }.
