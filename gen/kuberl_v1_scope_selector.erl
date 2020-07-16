-module(kuberl_v1_scope_selector).

-export([encode/1]).

-export_type([kuberl_v1_scope_selector/0]).

-type kuberl_v1_scope_selector() ::
    #{ 'matchExpressions' => list()
     }.

encode(#{ 'matchExpressions' := MatchExpressions
        }) ->
    #{ 'matchExpressions' => MatchExpressions
     }.
