-module(kuberl_v1_job_spec).

-export([encode/1]).

-export_type([kuberl_v1_job_spec/0]).

-type kuberl_v1_job_spec() ::
    #{ 'activeDeadlineSeconds' => integer(),
       'backoffLimit' => integer(),
       'completions' => integer(),
       'manualSelector' => boolean(),
       'parallelism' => integer(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'template' := kuberl_v1_pod_template_spec:kuberl_v1_pod_template_spec()
     }.

encode(#{ 'activeDeadlineSeconds' := ActiveDeadlineSeconds,
          'backoffLimit' := BackoffLimit,
          'completions' := Completions,
          'manualSelector' := ManualSelector,
          'parallelism' := Parallelism,
          'selector' := Selector,
          'template' := Template
        }) ->
    #{ 'activeDeadlineSeconds' => ActiveDeadlineSeconds,
       'backoffLimit' => BackoffLimit,
       'completions' => Completions,
       'manualSelector' => ManualSelector,
       'parallelism' => Parallelism,
       'selector' => Selector,
       'template' => Template
     }.
