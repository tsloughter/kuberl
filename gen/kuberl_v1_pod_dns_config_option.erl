-module(kuberl_v1_pod_dns_config_option).

-export([encode/1]).

-export_type([kuberl_v1_pod_dns_config_option/0]).

-type kuberl_v1_pod_dns_config_option() ::
    #{ 'name' => binary(),
       'value' => binary()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
