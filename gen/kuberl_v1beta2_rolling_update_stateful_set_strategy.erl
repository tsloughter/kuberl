-module(kuberl_v1beta2_rolling_update_stateful_set_strategy).

-export([encode/1]).

-export_type([kuberl_v1beta2_rolling_update_stateful_set_strategy/0]).

-type kuberl_v1beta2_rolling_update_stateful_set_strategy() ::
    #{ 'partition' => integer()
     }.

encode(#{ 'partition' := Partition
        }) ->
    #{ 'partition' => Partition
     }.
