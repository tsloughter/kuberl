-module(kuberl_v1_pod).

-export([encode/1]).

-export_type([kuberl_v1_pod/0]).

-type kuberl_v1_pod() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_pod_spec:kuberl_v1_pod_spec(),
       'status' => kuberl_v1_pod_status:kuberl_v1_pod_status()
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
