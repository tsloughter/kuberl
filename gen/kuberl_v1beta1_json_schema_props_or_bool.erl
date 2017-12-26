-module(kuberl_v1beta1_json_schema_props_or_bool).

-export([encode/1]).

-export_type([kuberl_v1beta1_json_schema_props_or_bool/0]).

-type kuberl_v1beta1_json_schema_props_or_bool() ::
    #{ 'Allows' := boolean(),
       'Schema' := kuberl_v1beta1_json_schema_props:kuberl_v1beta1_json_schema_props()
     }.

encode(#{ 'Allows' := Allows,
          'Schema' := Schema
        }) ->
    #{ 'Allows' => Allows,
       'Schema' => Schema
     }.
