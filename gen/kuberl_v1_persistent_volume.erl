-module(kuberl_v1_persistent_volume).

-export([encode/1]).

-export_type([kuberl_v1_persistent_volume/0]).

-type kuberl_v1_persistent_volume() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_persistent_volume_spec:kuberl_v1_persistent_volume_spec(),
       'status' => kuberl_v1_persistent_volume_status:kuberl_v1_persistent_volume_status()
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
