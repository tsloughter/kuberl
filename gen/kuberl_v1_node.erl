-module(kuberl_v1_node).

-export([encode/1]).

-export_type([kuberl_v1_node/0]).

-type kuberl_v1_node() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_node_spec:kuberl_v1_node_spec(),
       'status' => kuberl_v1_node_status:kuberl_v1_node_status()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec,
          'status' := Status
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec,
       'status' => Status
     }.
