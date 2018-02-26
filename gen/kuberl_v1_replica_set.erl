-module(kuberl_v1_replica_set).

-export([encode/1]).

-export_type([kuberl_v1_replica_set/0]).

-type kuberl_v1_replica_set() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_replica_set_spec:kuberl_v1_replica_set_spec(),
       'status' => kuberl_v1_replica_set_status:kuberl_v1_replica_set_status()
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
