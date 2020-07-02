-module(kuberl_v1alpha1_endpoint_slice).

-export([encode/1]).

-export_type([kuberl_v1alpha1_endpoint_slice/0]).

-type kuberl_v1alpha1_endpoint_slice() ::
    #{ 'addressType' => binary(),
       'apiVersion' => binary(),
       'endpoints' := list(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'ports' => list()
     }.

encode(#{ 'addressType' := AddressType,
          'apiVersion' := ApiVersion,
          'endpoints' := Endpoints,
          'kind' := Kind,
          'metadata' := Metadata,
          'ports' := Ports
        }) ->
    #{ 'addressType' => AddressType,
       'apiVersion' => ApiVersion,
       'endpoints' => Endpoints,
       'kind' => Kind,
       'metadata' => Metadata,
       'ports' => Ports
     }.
