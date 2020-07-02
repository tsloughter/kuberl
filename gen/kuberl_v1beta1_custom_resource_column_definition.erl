-module(kuberl_v1beta1_custom_resource_column_definition).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_column_definition/0]).

-type kuberl_v1beta1_custom_resource_column_definition() ::
    #{ 'JSONPath' := binary(),
       'description' => binary(),
       'format' => binary(),
       'name' := binary(),
       'priority' => integer(),
       'type' := binary()
     }.

encode(#{ 'JSONPath' := JSONPath,
          'description' := Description,
          'format' := Format,
          'name' := Name,
          'priority' := Priority,
          'type' := Type
        }) ->
    #{ 'JSONPath' => JSONPath,
       'description' => Description,
       'format' => Format,
       'name' => Name,
       'priority' => Priority,
       'type' => Type
     }.
