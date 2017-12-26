-module(kuberl_apps_v1beta1_deployment).

-export([encode/1]).

-export_type([kuberl_apps_v1beta1_deployment/0]).

-type kuberl_apps_v1beta1_deployment() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_apps_v1beta1_deployment_spec:kuberl_apps_v1beta1_deployment_spec(),
       'status' => kuberl_apps_v1beta1_deployment_status:kuberl_apps_v1beta1_deployment_status()
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
