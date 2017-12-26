-module(kuberl_v1beta1_daemon_set_update_strategy).

-export([encode/1]).

-export_type([kuberl_v1beta1_daemon_set_update_strategy/0]).

-type kuberl_v1beta1_daemon_set_update_strategy() ::
    #{ 'rollingUpdate' => kuberl_v1beta1_rolling_update_daemon_set:kuberl_v1beta1_rolling_update_daemon_set(),
       'type' => binary()
     }.

encode(#{ 'rollingUpdate' := RollingUpdate,
          'type' := Type
        }) ->
    #{ 'rollingUpdate' => RollingUpdate,
       'type' => Type
     }.
