-module(kuberl_v1_endpoint_subset).

-export([encode/1]).

-export_type([kuberl_v1_endpoint_subset/0]).

-type kuberl_v1_endpoint_subset() ::
    #{ 'addresses' => list(),
       'notReadyAddresses' => list(),
       'ports' => list()
     }.

encode(#{ 'addresses' := Addresses,
          'notReadyAddresses' := NotReadyAddresses,
          'ports' := Ports
        }) ->
    #{ 'addresses' => Addresses,
       'notReadyAddresses' => NotReadyAddresses,
       'ports' => Ports
     }.
