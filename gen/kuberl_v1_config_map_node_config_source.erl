-module(kuberl_v1_config_map_node_config_source).

-export([encode/1]).

-export_type([kuberl_v1_config_map_node_config_source/0]).

-type kuberl_v1_config_map_node_config_source() ::
    #{ 'kubeletConfigKey' := binary(),
       'name' := binary(),
       'namespace' := binary(),
       'resourceVersion' => binary(),
       'uid' => binary()
     }.

encode(#{ 'kubeletConfigKey' := KubeletConfigKey,
          'name' := Name,
          'namespace' := Namespace,
          'resourceVersion' := ResourceVersion,
          'uid' := Uid
        }) ->
    #{ 'kubeletConfigKey' => KubeletConfigKey,
       'name' => Name,
       'namespace' => Namespace,
       'resourceVersion' => ResourceVersion,
       'uid' => Uid
     }.
