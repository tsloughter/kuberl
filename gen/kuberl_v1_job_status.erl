-module(kuberl_v1_job_status).

-export([encode/1]).

-export_type([kuberl_v1_job_status/0]).

-type kuberl_v1_job_status() ::
    #{ 'active' => integer(),
       'completionTime' => kuberl_date_time:kuberl_date_time(),
       'conditions' => list(),
       'failed' => integer(),
       'startTime' => kuberl_date_time:kuberl_date_time(),
       'succeeded' => integer()
     }.

encode(#{ 'active' := Active,
          'completionTime' := CompletionTime,
          'conditions' := Conditions,
          'failed' := Failed,
          'startTime' := StartTime,
          'succeeded' := Succeeded
        }) ->
    #{ 'active' => Active,
       'completionTime' => CompletionTime,
       'conditions' => Conditions,
       'failed' => Failed,
       'startTime' => StartTime,
       'succeeded' => Succeeded
     }.
