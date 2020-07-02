-module(kuberl_v1alpha1_webhook_throttle_config).

-export([encode/1]).

-export_type([kuberl_v1alpha1_webhook_throttle_config/0]).

-type kuberl_v1alpha1_webhook_throttle_config() ::
    #{ 'burst' => integer(),
       'qps' => integer()
     }.

encode(#{ 'burst' := Burst,
          'qps' := Qps
        }) ->
    #{ 'burst' => Burst,
       'qps' => Qps
     }.
