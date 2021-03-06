-module(kuberl_v1_replication_controller).

-export([encode/1]).

-export_type([kuberl_v1_replication_controller/0]).

-type kuberl_v1_replication_controller() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_replication_controller_spec:kuberl_v1_replication_controller_spec(),
       'status' => kuberl_v1_replication_controller_status:kuberl_v1_replication_controller_status()
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
