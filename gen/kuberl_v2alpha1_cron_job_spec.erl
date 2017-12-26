-module(kuberl_v2alpha1_cron_job_spec).

-export([encode/1]).

-export_type([kuberl_v2alpha1_cron_job_spec/0]).

-type kuberl_v2alpha1_cron_job_spec() ::
    #{ 'concurrencyPolicy' => binary(),
       'failedJobsHistoryLimit' => integer(),
       'jobTemplate' := kuberl_v2alpha1_job_template_spec:kuberl_v2alpha1_job_template_spec(),
       'schedule' := binary(),
       'startingDeadlineSeconds' => integer(),
       'successfulJobsHistoryLimit' => integer(),
       'suspend' => boolean()
     }.

encode(#{ 'concurrencyPolicy' := ConcurrencyPolicy,
          'failedJobsHistoryLimit' := FailedJobsHistoryLimit,
          'jobTemplate' := JobTemplate,
          'schedule' := Schedule,
          'startingDeadlineSeconds' := StartingDeadlineSeconds,
          'successfulJobsHistoryLimit' := SuccessfulJobsHistoryLimit,
          'suspend' := Suspend
        }) ->
    #{ 'concurrencyPolicy' => ConcurrencyPolicy,
       'failedJobsHistoryLimit' => FailedJobsHistoryLimit,
       'jobTemplate' => JobTemplate,
       'schedule' => Schedule,
       'startingDeadlineSeconds' => StartingDeadlineSeconds,
       'successfulJobsHistoryLimit' => SuccessfulJobsHistoryLimit,
       'suspend' => Suspend
     }.
