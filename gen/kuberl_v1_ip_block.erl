-module(kuberl_v1_ip_block).

-export([encode/1]).

-export_type([kuberl_v1_ip_block/0]).

-type kuberl_v1_ip_block() ::
    #{ 'cidr' := binary(),
       'except' => list()
     }.

encode(#{ 'cidr' := Cidr,
          'except' := Except
        }) ->
    #{ 'cidr' => Cidr,
       'except' => Except
     }.
