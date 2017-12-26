-module(kuberl_v1_session_affinity_config).

-export([encode/1]).

-export_type([kuberl_v1_session_affinity_config/0]).

-type kuberl_v1_session_affinity_config() ::
    #{ 'clientIP' => kuberl_v1_client_ip_config:kuberl_v1_client_ip_config()
     }.

encode(#{ 'clientIP' := ClientIP
        }) ->
    #{ 'clientIP' => ClientIP
     }.
