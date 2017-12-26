-module(kuberl_v1_container_state_terminated).

-export([encode/1]).

-export_type([kuberl_v1_container_state_terminated/0]).

-type kuberl_v1_container_state_terminated() ::
    #{ 'containerID' => binary(),
       'exitCode' := integer(),
       'finishedAt' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'reason' => binary(),
       'signal' => integer(),
       'startedAt' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'containerID' := ContainerID,
          'exitCode' := ExitCode,
          'finishedAt' := FinishedAt,
          'message' := Message,
          'reason' := Reason,
          'signal' := Signal,
          'startedAt' := StartedAt
        }) ->
    #{ 'containerID' => ContainerID,
       'exitCode' => ExitCode,
       'finishedAt' => FinishedAt,
       'message' => Message,
       'reason' => Reason,
       'signal' => Signal,
       'startedAt' => StartedAt
     }.
