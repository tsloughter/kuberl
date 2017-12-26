-module(kuberl_v1beta1_self_subject_rules_review_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_self_subject_rules_review_spec/0]).

-type kuberl_v1beta1_self_subject_rules_review_spec() ::
    #{ 'namespace' => binary()
     }.

encode(#{ 'namespace' := Namespace
        }) ->
    #{ 'namespace' => Namespace
     }.
