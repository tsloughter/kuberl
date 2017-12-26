-module(kuberl_apps_v1beta1_deployment_strategy).

-export([encode/1]).

-export_type([kuberl_apps_v1beta1_deployment_strategy/0]).

-type kuberl_apps_v1beta1_deployment_strategy() ::
    #{ 'rollingUpdate' => kuberl_apps_v1beta1_rolling_update_deployment:kuberl_apps_v1beta1_rolling_update_deployment(),
       'type' => binary()
     }.

encode(#{ 'rollingUpdate' := RollingUpdate,
          'type' := Type
        }) ->
    #{ 'rollingUpdate' => RollingUpdate,
       'type' => Type
     }.
