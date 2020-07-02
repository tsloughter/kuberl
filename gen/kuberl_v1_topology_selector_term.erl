-module(kuberl_v1_topology_selector_term).

-export([encode/1]).

-export_type([kuberl_v1_topology_selector_term/0]).

-type kuberl_v1_topology_selector_term() ::
    #{ 'matchLabelExpressions' => list()
     }.

encode(#{ 'matchLabelExpressions' := MatchLabelExpressions
        }) ->
    #{ 'matchLabelExpressions' => MatchLabelExpressions
     }.
