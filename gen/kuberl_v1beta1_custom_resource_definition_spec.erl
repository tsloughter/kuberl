-module(kuberl_v1beta1_custom_resource_definition_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_definition_spec/0]).

-type kuberl_v1beta1_custom_resource_definition_spec() ::
    #{ 'group' := binary(),
       'names' := kuberl_v1beta1_custom_resource_definition_names:kuberl_v1beta1_custom_resource_definition_names(),
       'scope' := binary(),
       'validation' => kuberl_v1beta1_custom_resource_validation:kuberl_v1beta1_custom_resource_validation(),
       'version' := binary()
     }.

encode(#{ 'group' := Group,
          'names' := Names,
          'scope' := Scope,
          'validation' := Validation,
          'version' := Version
        }) ->
    #{ 'group' => Group,
       'names' => Names,
       'scope' => Scope,
       'validation' => Validation,
       'version' => Version
     }.
