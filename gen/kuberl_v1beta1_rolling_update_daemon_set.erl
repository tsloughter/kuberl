-module(kuberl_v1beta1_rolling_update_daemon_set).

-export([encode/1]).

-export_type([kuberl_v1beta1_rolling_update_daemon_set/0]).

-type kuberl_v1beta1_rolling_update_daemon_set() ::
    #{ 'maxUnavailable' => maps:map()
     }.

encode(#{ 'maxUnavailable' := MaxUnavailable
        }) ->
    #{ 'maxUnavailable' => MaxUnavailable
     }.
