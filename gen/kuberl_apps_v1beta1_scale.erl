-module(kuberl_apps_v1beta1_scale).

-export([encode/1]).

-export_type([kuberl_apps_v1beta1_scale/0]).

-type kuberl_apps_v1beta1_scale() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_apps_v1beta1_scale_spec:kuberl_apps_v1beta1_scale_spec(),
       'status' => kuberl_apps_v1beta1_scale_status:kuberl_apps_v1beta1_scale_status()
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
