-module(kuberl_v1beta1_api_service).

-export([encode/1]).

-export_type([kuberl_v1beta1_api_service/0]).

-type kuberl_v1beta1_api_service() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1beta1_api_service_spec:kuberl_v1beta1_api_service_spec(),
       'status' => kuberl_v1beta1_api_service_status:kuberl_v1beta1_api_service_status()
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
