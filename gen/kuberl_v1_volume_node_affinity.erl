-module(kuberl_v1_volume_node_affinity).

-export([encode/1]).

-export_type([kuberl_v1_volume_node_affinity/0]).

-type kuberl_v1_volume_node_affinity() ::
    #{ 'required' => kuberl_v1_node_selector:kuberl_v1_node_selector()
     }.

encode(#{ 'required' := Required
        }) ->
    #{ 'required' => Required
     }.
