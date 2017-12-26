-module(kuberl_v1_policy_rule).

-export([encode/1]).

-export_type([kuberl_v1_policy_rule/0]).

-type kuberl_v1_policy_rule() ::
    #{ 'apiGroups' => list(),
       'nonResourceURLs' => list(),
       'resourceNames' => list(),
       'resources' => list(),
       'verbs' := list()
     }.

encode(#{ 'apiGroups' := ApiGroups,
          'nonResourceURLs' := NonResourceURLs,
          'resourceNames' := ResourceNames,
          'resources' := Resources,
          'verbs' := Verbs
        }) ->
    #{ 'apiGroups' => ApiGroups,
       'nonResourceURLs' => NonResourceURLs,
       'resourceNames' => ResourceNames,
       'resources' => Resources,
       'verbs' => Verbs
     }.
