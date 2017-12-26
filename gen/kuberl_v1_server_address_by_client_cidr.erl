-module(kuberl_v1_server_address_by_client_cidr).

-export([encode/1]).

-export_type([kuberl_v1_server_address_by_client_cidr/0]).

-type kuberl_v1_server_address_by_client_cidr() ::
    #{ 'clientCIDR' := binary(),
       'serverAddress' := binary()
     }.

encode(#{ 'clientCIDR' := ClientCIDR,
          'serverAddress' := ServerAddress
        }) ->
    #{ 'clientCIDR' => ClientCIDR,
       'serverAddress' => ServerAddress
     }.
