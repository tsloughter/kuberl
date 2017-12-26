-module(kuberl_v1_preferred_scheduling_term).

-export([encode/1]).

-export_type([kuberl_v1_preferred_scheduling_term/0]).

-type kuberl_v1_preferred_scheduling_term() ::
    #{ 'preference' := kuberl_v1_node_selector_term:kuberl_v1_node_selector_term(),
       'weight' := integer()
     }.

encode(#{ 'preference' := Preference,
          'weight' := Weight
        }) ->
    #{ 'preference' => Preference,
       'weight' => Weight
     }.
