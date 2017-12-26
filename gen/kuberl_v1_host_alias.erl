-module(kuberl_v1_host_alias).

-export([encode/1]).

-export_type([kuberl_v1_host_alias/0]).

-type kuberl_v1_host_alias() ::
    #{ 'hostnames' => list(),
       'ip' => binary()
     }.

encode(#{ 'hostnames' := Hostnames,
          'ip' := Ip
        }) ->
    #{ 'hostnames' => Hostnames,
       'ip' => Ip
     }.
