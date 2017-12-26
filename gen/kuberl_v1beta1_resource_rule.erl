-module(kuberl_v1beta1_resource_rule).

-export([encode/1]).

-export_type([kuberl_v1beta1_resource_rule/0]).

-type kuberl_v1beta1_resource_rule() ::
    #{ 'apiGroups' => list(),
       'resourceNames' => list(),
       'resources' => list(),
       'verbs' := list()
     }.

encode(#{ 'apiGroups' := ApiGroups,
          'resourceNames' := ResourceNames,
          'resources' := Resources,
          'verbs' := Verbs
        }) ->
    #{ 'apiGroups' => ApiGroups,
       'resourceNames' => ResourceNames,
       'resources' => Resources,
       'verbs' => Verbs
     }.
