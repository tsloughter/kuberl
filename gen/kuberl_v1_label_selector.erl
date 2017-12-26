-module(kuberl_v1_label_selector).

-export([encode/1]).

-export_type([kuberl_v1_label_selector/0]).

-type kuberl_v1_label_selector() ::
    #{ 'matchExpressions' => list(),
       'matchLabels' => maps:map()
     }.

encode(#{ 'matchExpressions' := MatchExpressions,
          'matchLabels' := MatchLabels
        }) ->
    #{ 'matchExpressions' => MatchExpressions,
       'matchLabels' => MatchLabels
     }.
