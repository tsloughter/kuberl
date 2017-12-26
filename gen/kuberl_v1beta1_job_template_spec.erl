-module(kuberl_v1beta1_job_template_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_job_template_spec/0]).

-type kuberl_v1beta1_job_template_spec() ::
    #{ 'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_job_spec:kuberl_v1_job_spec()
     }.

encode(#{ 'metadata' := Metadata,
          'spec' := Spec
        }) ->
    #{ 'metadata' => Metadata,
       'spec' => Spec
     }.
