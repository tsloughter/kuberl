-module(kuberl_v1beta1_csi_node).

-export([encode/1]).

-export_type([kuberl_v1beta1_csi_node/0]).

-type kuberl_v1beta1_csi_node() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' := kuberl_v1beta1_csi_node_spec:kuberl_v1beta1_csi_node_spec()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec
     }.
