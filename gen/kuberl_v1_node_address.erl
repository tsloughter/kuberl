-module(kuberl_v1_node_address).

-export([encode/1]).

-export_type([kuberl_v1_node_address/0]).

-type kuberl_v1_node_address() ::
    #{ 'address' := binary(),
       'type' := binary()
     }.

encode(#{ 'address' := Address,
          'type' := Type
        }) ->
    #{ 'address' => Address,
       'type' => Type
     }.
