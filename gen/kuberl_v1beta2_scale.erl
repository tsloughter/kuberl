-module(kuberl_v1beta2_scale).

-export([encode/1]).

-export_type([kuberl_v1beta2_scale/0]).

-type kuberl_v1beta2_scale() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1beta2_scale_spec:kuberl_v1beta2_scale_spec(),
       'status' => kuberl_v1beta2_scale_status:kuberl_v1beta2_scale_status()
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
