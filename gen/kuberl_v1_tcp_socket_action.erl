-module(kuberl_v1_tcp_socket_action).

-export([encode/1]).

-export_type([kuberl_v1_tcp_socket_action/0]).

-type kuberl_v1_tcp_socket_action() ::
    #{ 'host' => binary(),
       'port' := maps:map()
     }.

encode(#{ 'host' := Host,
          'port' := Port
        }) ->
    #{ 'host' => Host,
       'port' => Port
     }.
