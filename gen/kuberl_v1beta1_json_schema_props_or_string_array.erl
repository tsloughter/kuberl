-module(kuberl_v1beta1_json_schema_props_or_string_array).

-export([encode/1]).

-export_type([kuberl_v1beta1_json_schema_props_or_string_array/0]).

-type kuberl_v1beta1_json_schema_props_or_string_array() ::
    #{ 'Property' := list(),
       'Schema' := kuberl_v1beta1_json_schema_props:kuberl_v1beta1_json_schema_props()
     }.

encode(#{ 'Property' := Property,
          'Schema' := Schema
        }) ->
    #{ 'Property' => Property,
       'Schema' => Schema
     }.
