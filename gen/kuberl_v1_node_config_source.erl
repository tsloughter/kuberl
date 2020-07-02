-module(kuberl_v1_node_config_source).

-export([encode/1]).

-export_type([kuberl_v1_node_config_source/0]).

-type kuberl_v1_node_config_source() ::
    #{ 'configMap' => kuberl_v1_config_map_node_config_source:kuberl_v1_config_map_node_config_source()
     }.

encode(#{ 'configMap' := ConfigMap
        }) ->
    #{ 'configMap' => ConfigMap
     }.
