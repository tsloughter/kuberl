-module(kuberl_v1_persistent_volume_claim).

-export([encode/1]).

-export_type([kuberl_v1_persistent_volume_claim/0]).

-type kuberl_v1_persistent_volume_claim() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_persistent_volume_claim_spec:kuberl_v1_persistent_volume_claim_spec(),
       'status' => kuberl_v1_persistent_volume_claim_status:kuberl_v1_persistent_volume_claim_status()
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
