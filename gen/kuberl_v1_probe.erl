-module(kuberl_v1_probe).

-export([encode/1]).

-export_type([kuberl_v1_probe/0]).

-type kuberl_v1_probe() ::
    #{ 'exec' => kuberl_v1_exec_action:kuberl_v1_exec_action(),
       'failureThreshold' => integer(),
       'httpGet' => kuberl_v1_http_get_action:kuberl_v1_http_get_action(),
       'initialDelaySeconds' => integer(),
       'periodSeconds' => integer(),
       'successThreshold' => integer(),
       'tcpSocket' => kuberl_v1_tcp_socket_action:kuberl_v1_tcp_socket_action(),
       'timeoutSeconds' => integer()
     }.

encode(#{ 'exec' := Exec,
          'failureThreshold' := FailureThreshold,
          'httpGet' := HttpGet,
          'initialDelaySeconds' := InitialDelaySeconds,
          'periodSeconds' := PeriodSeconds,
          'successThreshold' := SuccessThreshold,
          'tcpSocket' := TcpSocket,
          'timeoutSeconds' := TimeoutSeconds
        }) ->
    #{ 'exec' => Exec,
       'failureThreshold' => FailureThreshold,
       'httpGet' => HttpGet,
       'initialDelaySeconds' => InitialDelaySeconds,
       'periodSeconds' => PeriodSeconds,
       'successThreshold' => SuccessThreshold,
       'tcpSocket' => TcpSocket,
       'timeoutSeconds' => TimeoutSeconds
     }.
