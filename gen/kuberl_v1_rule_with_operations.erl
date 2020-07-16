-module(kuberl_v1_rule_with_operations).

-export([encode/1]).

-export_type([kuberl_v1_rule_with_operations/0]).

-type kuberl_v1_rule_with_operations() ::
    #{ 'apiGroups' => list(),
       'apiVersions' => list(),
       'operations' => list(),
       'resources' => list(),
       'scope' => binary()
     }.

encode(#{ 'apiGroups' := ApiGroups,
          'apiVersions' := ApiVersions,
          'operations' := Operations,
          'resources' := Resources,
          'scope' := Scope
        }) ->
    #{ 'apiGroups' => ApiGroups,
       'apiVersions' => ApiVersions,
       'operations' => Operations,
       'resources' => Resources,
       'scope' => Scope
     }.
