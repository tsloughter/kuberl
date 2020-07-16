-module(kuberl_v1beta1_custom_resource_definition_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_definition_spec/0]).

-type kuberl_v1beta1_custom_resource_definition_spec() ::
    #{ 'additionalPrinterColumns' => list(),
       'conversion' => kuberl_v1beta1_custom_resource_conversion:kuberl_v1beta1_custom_resource_conversion(),
       'group' := binary(),
       'names' := kuberl_v1beta1_custom_resource_definition_names:kuberl_v1beta1_custom_resource_definition_names(),
       'preserveUnknownFields' => boolean(),
       'scope' := binary(),
       'subresources' => kuberl_v1beta1_custom_resource_subresources:kuberl_v1beta1_custom_resource_subresources(),
       'validation' => kuberl_v1beta1_custom_resource_validation:kuberl_v1beta1_custom_resource_validation(),
       'version' => binary(),
       'versions' => list()
     }.

encode(#{ 'additionalPrinterColumns' := AdditionalPrinterColumns,
          'conversion' := Conversion,
          'group' := Group,
          'names' := Names,
          'preserveUnknownFields' := PreserveUnknownFields,
          'scope' := Scope,
          'subresources' := Subresources,
          'validation' := Validation,
          'version' := Version,
          'versions' := Versions
        }) ->
    #{ 'additionalPrinterColumns' => AdditionalPrinterColumns,
       'conversion' => Conversion,
       'group' => Group,
       'names' => Names,
       'preserveUnknownFields' => PreserveUnknownFields,
       'scope' => Scope,
       'subresources' => Subresources,
       'validation' => Validation,
       'version' => Version,
       'versions' => Versions
     }.
