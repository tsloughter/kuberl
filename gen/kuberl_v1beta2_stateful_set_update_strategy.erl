-module(kuberl_v1beta2_stateful_set_update_strategy).

-export([encode/1]).

-export_type([kuberl_v1beta2_stateful_set_update_strategy/0]).

-type kuberl_v1beta2_stateful_set_update_strategy() ::
    #{ 'rollingUpdate' => kuberl_v1beta2_rolling_update_stateful_set_strategy:kuberl_v1beta2_rolling_update_stateful_set_strategy(),
       'type' => binary()
     }.

encode(#{ 'rollingUpdate' := RollingUpdate,
          'type' := Type
        }) ->
    #{ 'rollingUpdate' => RollingUpdate,
       'type' => Type
     }.
