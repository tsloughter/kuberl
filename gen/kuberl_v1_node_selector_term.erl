-module(kuberl_v1_node_selector_term).

-export([encode/1]).

-export_type([kuberl_v1_node_selector_term/0]).

-type kuberl_v1_node_selector_term() ::
    #{ 'matchExpressions' => list(),
       'matchFields' => list()
     }.

encode(#{ 'matchExpressions' := MatchExpressions,
          'matchFields' := MatchFields
        }) ->
    #{ 'matchExpressions' => MatchExpressions,
       'matchFields' => MatchFields
     }.
