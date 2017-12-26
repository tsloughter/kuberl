-module(kuberl_v1beta1_subject_access_review_status).

-export([encode/1]).

-export_type([kuberl_v1beta1_subject_access_review_status/0]).

-type kuberl_v1beta1_subject_access_review_status() ::
    #{ 'allowed' := boolean(),
       'evaluationError' => binary(),
       'reason' => binary()
     }.

encode(#{ 'allowed' := Allowed,
          'evaluationError' := EvaluationError,
          'reason' := Reason
        }) ->
    #{ 'allowed' => Allowed,
       'evaluationError' => EvaluationError,
       'reason' => Reason
     }.
