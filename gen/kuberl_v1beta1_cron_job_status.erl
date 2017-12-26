-module(kuberl_v1beta1_cron_job_status).

-export([encode/1]).

-export_type([kuberl_v1beta1_cron_job_status/0]).

-type kuberl_v1beta1_cron_job_status() ::
    #{ 'active' => list(),
       'lastScheduleTime' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'active' := Active,
          'lastScheduleTime' := LastScheduleTime
        }) ->
    #{ 'active' => Active,
       'lastScheduleTime' => LastScheduleTime
     }.
