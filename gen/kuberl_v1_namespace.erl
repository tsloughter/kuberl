-module(kuberl_v1_namespace).

-export([encode/1]).

-export_type([kuberl_v1_namespace/0]).

-type kuberl_v1_namespace() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_namespace_spec:kuberl_v1_namespace_spec(),
       'status' => kuberl_v1_namespace_status:kuberl_v1_namespace_status()
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
