-module(kuberl_apps_v1beta1_rolling_update_deployment).

-export([encode/1]).

-export_type([kuberl_apps_v1beta1_rolling_update_deployment/0]).

-type kuberl_apps_v1beta1_rolling_update_deployment() ::
    #{ 'maxSurge' => maps:map(),
       'maxUnavailable' => maps:map()
     }.

encode(#{ 'maxSurge' := MaxSurge,
          'maxUnavailable' := MaxUnavailable
        }) ->
    #{ 'maxSurge' => MaxSurge,
       'maxUnavailable' => MaxUnavailable
     }.
