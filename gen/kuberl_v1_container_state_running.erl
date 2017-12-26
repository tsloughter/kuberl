-module(kuberl_v1_container_state_running).

-export([encode/1]).

-export_type([kuberl_v1_container_state_running/0]).

-type kuberl_v1_container_state_running() ::
    #{ 'startedAt' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'startedAt' := StartedAt
        }) ->
    #{ 'startedAt' => StartedAt
     }.
