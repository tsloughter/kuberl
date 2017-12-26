-module(kuberl_v1_label_selector_requirement).

-export([encode/1]).

-export_type([kuberl_v1_label_selector_requirement/0]).

-type kuberl_v1_label_selector_requirement() ::
    #{ 'key' := binary(),
       'operator' := binary(),
       'values' => list()
     }.

encode(#{ 'key' := Key,
          'operator' := Operator,
          'values' := Values
        }) ->
    #{ 'key' => Key,
       'operator' => Operator,
       'values' => Values
     }.
