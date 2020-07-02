-module(kuberl_v1beta1_custom_resource_definition_version).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_definition_version/0]).

-type kuberl_v1beta1_custom_resource_definition_version() ::
    #{ 'additionalPrinterColumns' => list(),
       'name' := binary(),
       'schema' => kuberl_v1beta1_custom_resource_validation:kuberl_v1beta1_custom_resource_validation(),
       'served' := boolean(),
       'storage' := boolean(),
       'subresources' => kuberl_v1beta1_custom_resource_subresources:kuberl_v1beta1_custom_resource_subresources()
     }.

encode(#{ 'additionalPrinterColumns' := AdditionalPrinterColumns,
          'name' := Name,
          'schema' := Schema,
          'served' := Served,
          'storage' := Storage,
          'subresources' := Subresources
        }) ->
    #{ 'additionalPrinterColumns' => AdditionalPrinterColumns,
       'name' => Name,
       'schema' => Schema,
       'served' => Served,
       'storage' => Storage,
       'subresources' => Subresources
     }.
