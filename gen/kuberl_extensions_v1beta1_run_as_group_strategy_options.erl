-module(kuberl_extensions_v1beta1_run_as_group_strategy_options).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_run_as_group_strategy_options/0]).

-type kuberl_extensions_v1beta1_run_as_group_strategy_options() ::
    #{ 'ranges' => list(),
       'rule' := binary()
     }.

encode(#{ 'ranges' := Ranges,
          'rule' := Rule
        }) ->
    #{ 'ranges' => Ranges,
       'rule' => Rule
     }.
