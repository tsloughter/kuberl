-module(kuberl_v1beta2_deployment_strategy).

-export([encode/1]).

-export_type([kuberl_v1beta2_deployment_strategy/0]).

-type kuberl_v1beta2_deployment_strategy() ::
    #{ 'rollingUpdate' => kuberl_v1beta2_rolling_update_deployment:kuberl_v1beta2_rolling_update_deployment(),
       'type' => binary()
     }.

encode(#{ 'rollingUpdate' := RollingUpdate,
          'type' := Type
        }) ->
    #{ 'rollingUpdate' => RollingUpdate,
       'type' => Type
     }.
