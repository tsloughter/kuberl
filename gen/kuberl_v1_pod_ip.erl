-module(kuberl_v1_pod_ip).

-export([encode/1]).

-export_type([kuberl_v1_pod_ip/0]).

-type kuberl_v1_pod_ip() ::
    #{ 'ip' => binary()
     }.

encode(#{ 'ip' := Ip
        }) ->
    #{ 'ip' => Ip
     }.
