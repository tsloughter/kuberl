-module(kuberl_v1_handler).

-export([encode/1]).

-export_type([kuberl_v1_handler/0]).

-type kuberl_v1_handler() ::
    #{ 'exec' => kuberl_v1_exec_action:kuberl_v1_exec_action(),
       'httpGet' => kuberl_v1_http_get_action:kuberl_v1_http_get_action(),
       'tcpSocket' => kuberl_v1_tcp_socket_action:kuberl_v1_tcp_socket_action()
     }.

encode(#{ 'exec' := Exec,
          'httpGet' := HttpGet,
          'tcpSocket' := TcpSocket
        }) ->
    #{ 'exec' => Exec,
       'httpGet' => HttpGet,
       'tcpSocket' => TcpSocket
     }.
