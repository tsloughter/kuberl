-module(kuberl_v1beta1_custom_resource_validation).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_validation/0]).

-type kuberl_v1beta1_custom_resource_validation() ::
    #{ 'openAPIV3Schema' => kuberl_v1beta1_json_schema_props:kuberl_v1beta1_json_schema_props()
     }.

encode(#{ 'openAPIV3Schema' := OpenAPIV3Schema
        }) ->
    #{ 'openAPIV3Schema' => OpenAPIV3Schema
     }.
