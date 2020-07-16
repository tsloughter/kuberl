-module(kuberl_v1_resource_quota_spec).

-export([encode/1]).

-export_type([kuberl_v1_resource_quota_spec/0]).

-type kuberl_v1_resource_quota_spec() ::
    #{ 'hard' => maps:map(),
       'scopeSelector' => kuberl_v1_scope_selector:kuberl_v1_scope_selector(),
       'scopes' => list()
     }.

encode(#{ 'hard' := Hard,
          'scopeSelector' := ScopeSelector,
          'scopes' := Scopes
        }) ->
    #{ 'hard' => Hard,
       'scopeSelector' => ScopeSelector,
       'scopes' => Scopes
     }.
