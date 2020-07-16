-module(kuberl_v1beta1_custom_resource_definition).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_definition/0]).

-type kuberl_v1beta1_custom_resource_definition() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' := kuberl_v1beta1_custom_resource_definition_spec:kuberl_v1beta1_custom_resource_definition_spec(),
       'status' => kuberl_v1beta1_custom_resource_definition_status:kuberl_v1beta1_custom_resource_definition_status()
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
