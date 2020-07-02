-module(kuberl_v1_custom_resource_definition_spec).

-export([encode/1]).

-export_type([kuberl_v1_custom_resource_definition_spec/0]).

-type kuberl_v1_custom_resource_definition_spec() ::
    #{ 'conversion' => kuberl_v1_custom_resource_conversion:kuberl_v1_custom_resource_conversion(),
       'group' := binary(),
       'names' := kuberl_v1_custom_resource_definition_names:kuberl_v1_custom_resource_definition_names(),
       'preserveUnknownFields' => boolean(),
       'scope' := binary(),
       'versions' := list()
     }.

encode(#{ 'conversion' := Conversion,
          'group' := Group,
          'names' := Names,
          'preserveUnknownFields' := PreserveUnknownFields,
          'scope' := Scope,
          'versions' := Versions
        }) ->
    #{ 'conversion' => Conversion,
       'group' => Group,
       'names' => Names,
       'preserveUnknownFields' => PreserveUnknownFields,
       'scope' => Scope,
       'versions' => Versions
     }.
