-module(kuberl_v1_scoped_resource_selector_requirement).

-export([encode/1]).

-export_type([kuberl_v1_scoped_resource_selector_requirement/0]).

-type kuberl_v1_scoped_resource_selector_requirement() ::
    #{ 'operator' := binary(),
       'scopeName' := binary(),
       'values' => list()
     }.

encode(#{ 'operator' := Operator,
          'scopeName' := ScopeName,
          'values' := Values
        }) ->
    #{ 'operator' => Operator,
       'scopeName' => ScopeName,
       'values' => Values
     }.
