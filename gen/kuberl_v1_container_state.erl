-module(kuberl_v1_container_state).

-export([encode/1]).

-export_type([kuberl_v1_container_state/0]).

-type kuberl_v1_container_state() ::
    #{ 'running' => kuberl_v1_container_state_running:kuberl_v1_container_state_running(),
       'terminated' => kuberl_v1_container_state_terminated:kuberl_v1_container_state_terminated(),
       'waiting' => kuberl_v1_container_state_waiting:kuberl_v1_container_state_waiting()
     }.

encode(#{ 'running' := Running,
          'terminated' := Terminated,
          'waiting' := Waiting
        }) ->
    #{ 'running' => Running,
       'terminated' => Terminated,
       'waiting' => Waiting
     }.
