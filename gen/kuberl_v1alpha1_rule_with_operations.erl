-module(kuberl_v1alpha1_rule_with_operations).

-export([encode/1]).

-export_type([kuberl_v1alpha1_rule_with_operations/0]).

-type kuberl_v1alpha1_rule_with_operations() ::
    #{ 'apiGroups' => list(),
       'apiVersions' => list(),
       'operations' => list(),
       'resources' => list()
     }.

encode(#{ 'apiGroups' := ApiGroups,
          'apiVersions' := ApiVersions,
          'operations' := Operations,
          'resources' := Resources
        }) ->
    #{ 'apiGroups' => ApiGroups,
       'apiVersions' => ApiVersions,
       'operations' => Operations,
       'resources' => Resources
     }.
