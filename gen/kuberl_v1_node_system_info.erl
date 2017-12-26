-module(kuberl_v1_node_system_info).

-export([encode/1]).

-export_type([kuberl_v1_node_system_info/0]).

-type kuberl_v1_node_system_info() ::
    #{ 'architecture' := binary(),
       'bootID' := binary(),
       'containerRuntimeVersion' := binary(),
       'kernelVersion' := binary(),
       'kubeProxyVersion' := binary(),
       'kubeletVersion' := binary(),
       'machineID' := binary(),
       'operatingSystem' := binary(),
       'osImage' := binary(),
       'systemUUID' := binary()
     }.

encode(#{ 'architecture' := Architecture,
          'bootID' := BootID,
          'containerRuntimeVersion' := ContainerRuntimeVersion,
          'kernelVersion' := KernelVersion,
          'kubeProxyVersion' := KubeProxyVersion,
          'kubeletVersion' := KubeletVersion,
          'machineID' := MachineID,
          'operatingSystem' := OperatingSystem,
          'osImage' := OsImage,
          'systemUUID' := SystemUUID
        }) ->
    #{ 'architecture' => Architecture,
       'bootID' => BootID,
       'containerRuntimeVersion' => ContainerRuntimeVersion,
       'kernelVersion' => KernelVersion,
       'kubeProxyVersion' => KubeProxyVersion,
       'kubeletVersion' => KubeletVersion,
       'machineID' => MachineID,
       'operatingSystem' => OperatingSystem,
       'osImage' => OsImage,
       'systemUUID' => SystemUUID
     }.
