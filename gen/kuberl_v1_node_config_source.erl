-module(kuberl_v1_node_config_source).

-export([encode/1]).

-export_type([kuberl_v1_node_config_source/0]).

-type kuberl_v1_node_config_source() ::
    #{ 'apiVersion' => binary(),
       'configMapRef' => kuberl_v1_object_reference:kuberl_v1_object_reference(),
       'kind' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'configMapRef' := ConfigMapRef,
          'kind' := Kind
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'configMapRef' => ConfigMapRef,
       'kind' => Kind
     }.
