-module(kuberl_v1beta1_volume_attachment).

-export([encode/1]).

-export_type([kuberl_v1beta1_volume_attachment/0]).

-type kuberl_v1beta1_volume_attachment() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' := kuberl_v1beta1_volume_attachment_spec:kuberl_v1beta1_volume_attachment_spec(),
       'status' => kuberl_v1beta1_volume_attachment_status:kuberl_v1beta1_volume_attachment_status()
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
