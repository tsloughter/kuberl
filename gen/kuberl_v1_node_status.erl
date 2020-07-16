-module(kuberl_v1_node_status).

-export([encode/1]).

-export_type([kuberl_v1_node_status/0]).

-type kuberl_v1_node_status() ::
    #{ 'addresses' => list(),
       'allocatable' => maps:map(),
       'capacity' => maps:map(),
       'conditions' => list(),
       'config' => kuberl_v1_node_config_status:kuberl_v1_node_config_status(),
       'daemonEndpoints' => kuberl_v1_node_daemon_endpoints:kuberl_v1_node_daemon_endpoints(),
       'images' => list(),
       'nodeInfo' => kuberl_v1_node_system_info:kuberl_v1_node_system_info(),
       'phase' => binary(),
       'volumesAttached' => list(),
       'volumesInUse' => list()
     }.

encode(#{ 'addresses' := Addresses,
          'allocatable' := Allocatable,
          'capacity' := Capacity,
          'conditions' := Conditions,
          'config' := Config,
          'daemonEndpoints' := DaemonEndpoints,
          'images' := Images,
          'nodeInfo' := NodeInfo,
          'phase' := Phase,
          'volumesAttached' := VolumesAttached,
          'volumesInUse' := VolumesInUse
        }) ->
    #{ 'addresses' => Addresses,
       'allocatable' => Allocatable,
       'capacity' => Capacity,
       'conditions' => Conditions,
       'config' => Config,
       'daemonEndpoints' => DaemonEndpoints,
       'images' => Images,
       'nodeInfo' => NodeInfo,
       'phase' => Phase,
       'volumesAttached' => VolumesAttached,
       'volumesInUse' => VolumesInUse
     }.
