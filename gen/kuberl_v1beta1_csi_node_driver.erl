-module(kuberl_v1beta1_csi_node_driver).

-export([encode/1]).

-export_type([kuberl_v1beta1_csi_node_driver/0]).

-type kuberl_v1beta1_csi_node_driver() ::
    #{ 'allocatable' => kuberl_v1beta1_volume_node_resources:kuberl_v1beta1_volume_node_resources(),
       'name' := binary(),
       'nodeID' := binary(),
       'topologyKeys' => list()
     }.

encode(#{ 'allocatable' := Allocatable,
          'name' := Name,
          'nodeID' := NodeID,
          'topologyKeys' := TopologyKeys
        }) ->
    #{ 'allocatable' => Allocatable,
       'name' => Name,
       'nodeID' => NodeID,
       'topologyKeys' => TopologyKeys
     }.
