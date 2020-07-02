-module(kuberl_v1beta1_volume_node_resources).

-export([encode/1]).

-export_type([kuberl_v1beta1_volume_node_resources/0]).

-type kuberl_v1beta1_volume_node_resources() ::
    #{ 'count' => integer()
     }.

encode(#{ 'count' := Count
        }) ->
    #{ 'count' => Count
     }.
