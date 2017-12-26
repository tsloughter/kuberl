-module(kuberl_v1_resource_field_selector).

-export([encode/1]).

-export_type([kuberl_v1_resource_field_selector/0]).

-type kuberl_v1_resource_field_selector() ::
    #{ 'containerName' => binary(),
       'divisor' => binary(),
       'resource' := binary()
     }.

encode(#{ 'containerName' := ContainerName,
          'divisor' := Divisor,
          'resource' := Resource
        }) ->
    #{ 'containerName' => ContainerName,
       'divisor' => Divisor,
       'resource' => Resource
     }.
