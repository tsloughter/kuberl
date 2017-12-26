-module(kuberl_v2alpha1_cron_job).

-export([encode/1]).

-export_type([kuberl_v2alpha1_cron_job/0]).

-type kuberl_v2alpha1_cron_job() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v2alpha1_cron_job_spec:kuberl_v2alpha1_cron_job_spec(),
       'status' => kuberl_v2alpha1_cron_job_status:kuberl_v2alpha1_cron_job_status()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec,
          'status' := Status
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec,
       'status' => Status
     }.
