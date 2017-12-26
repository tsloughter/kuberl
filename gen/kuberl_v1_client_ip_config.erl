-module(kuberl_v1_client_ip_config).

-export([encode/1]).

-export_type([kuberl_v1_client_ip_config/0]).

-type kuberl_v1_client_ip_config() ::
    #{ 'timeoutSeconds' => integer()
     }.

encode(#{ 'timeoutSeconds' := TimeoutSeconds
        }) ->
    #{ 'timeoutSeconds' => TimeoutSeconds
     }.
