-module(kuberl_v1_custom_resource_column_definition).

-export([encode/1]).

-export_type([kuberl_v1_custom_resource_column_definition/0]).

-type kuberl_v1_custom_resource_column_definition() ::
    #{ 'description' => binary(),
       'format' => binary(),
       'jsonPath' := binary(),
       'name' := binary(),
       'priority' => integer(),
       'type' := binary()
     }.

encode(#{ 'description' := Description,
          'format' := Format,
          'jsonPath' := JsonPath,
          'name' := Name,
          'priority' := Priority,
          'type' := Type
        }) ->
    #{ 'description' => Description,
       'format' => Format,
       'jsonPath' => JsonPath,
       'name' => Name,
       'priority' => Priority,
       'type' => Type
     }.
