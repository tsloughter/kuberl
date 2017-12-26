-module(kuberl_v1_resource_quota_spec).

-export([encode/1]).

-export_type([kuberl_v1_resource_quota_spec/0]).

-type kuberl_v1_resource_quota_spec() ::
    #{ 'hard' => maps:map(),
       'scopes' => list()
     }.

encode(#{ 'hard' := Hard,
          'scopes' := Scopes
        }) ->
    #{ 'hard' => Hard,
       'scopes' => Scopes
     }.
