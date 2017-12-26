-module(kuberl_v1beta1_json_schema_props_or_array).

-export([encode/1]).

-export_type([kuberl_v1beta1_json_schema_props_or_array/0]).

-type kuberl_v1beta1_json_schema_props_or_array() ::
    #{ 'JSONSchemas' := list(),
       'Schema' := kuberl_v1beta1_json_schema_props:kuberl_v1beta1_json_schema_props()
     }.

encode(#{ 'JSONSchemas' := JSONSchemas,
          'Schema' := Schema
        }) ->
    #{ 'JSONSchemas' => JSONSchemas,
       'Schema' => Schema
     }.
