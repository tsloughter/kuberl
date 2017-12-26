-module(kuberl_v1_daemon_endpoint).

-export([encode/1]).

-export_type([kuberl_v1_daemon_endpoint/0]).

-type kuberl_v1_daemon_endpoint() ::
    #{ 'Port' := integer()
     }.

encode(#{ 'Port' := Port
        }) ->
    #{ 'Port' => Port
     }.
