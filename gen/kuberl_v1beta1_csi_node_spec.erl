-module(kuberl_v1beta1_csi_node_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_csi_node_spec/0]).

-type kuberl_v1beta1_csi_node_spec() ::
    #{ 'drivers' := list()
     }.

encode(#{ 'drivers' := Drivers
        }) ->
    #{ 'drivers' => Drivers
     }.
