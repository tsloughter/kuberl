-module(kuberl_v1beta1_non_resource_rule).

-export([encode/1]).

-export_type([kuberl_v1beta1_non_resource_rule/0]).

-type kuberl_v1beta1_non_resource_rule() ::
    #{ 'nonResourceURLs' => list(),
       'verbs' := list()
     }.

encode(#{ 'nonResourceURLs' := NonResourceURLs,
          'verbs' := Verbs
        }) ->
    #{ 'nonResourceURLs' => NonResourceURLs,
       'verbs' => Verbs
     }.
