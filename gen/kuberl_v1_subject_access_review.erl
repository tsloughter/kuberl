-module(kuberl_v1_subject_access_review).

-export([encode/1]).

-export_type([kuberl_v1_subject_access_review/0]).

-type kuberl_v1_subject_access_review() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' := kuberl_v1_subject_access_review_spec:kuberl_v1_subject_access_review_spec(),
       'status' => kuberl_v1_subject_access_review_status:kuberl_v1_subject_access_review_status()
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
