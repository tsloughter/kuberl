-module(kuberl_v1alpha1_rule).

-export([encode/1]).

-export_type([kuberl_v1alpha1_rule/0]).

-type kuberl_v1alpha1_rule() ::
    #{ 'apiGroups' => list(),
       'apiVersions' => list(),
       'resources' => list()
     }.

encode(#{ 'apiGroups' := ApiGroups,
          'apiVersions' := ApiVersions,
          'resources' := Resources
        }) ->
    #{ 'apiGroups' => ApiGroups,
       'apiVersions' => ApiVersions,
       'resources' => Resources
     }.
