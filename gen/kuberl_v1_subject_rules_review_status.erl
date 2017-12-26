-module(kuberl_v1_subject_rules_review_status).

-export([encode/1]).

-export_type([kuberl_v1_subject_rules_review_status/0]).

-type kuberl_v1_subject_rules_review_status() ::
    #{ 'evaluationError' => binary(),
       'incomplete' := boolean(),
       'nonResourceRules' := list(),
       'resourceRules' := list()
     }.

encode(#{ 'evaluationError' := EvaluationError,
          'incomplete' := Incomplete,
          'nonResourceRules' := NonResourceRules,
          'resourceRules' := ResourceRules
        }) ->
    #{ 'evaluationError' => EvaluationError,
       'incomplete' => Incomplete,
       'nonResourceRules' => NonResourceRules,
       'resourceRules' => ResourceRules
     }.
