-module(kuberl_policy_v1beta1_run_as_user_strategy_options).

-export([encode/1]).

-export_type([kuberl_policy_v1beta1_run_as_user_strategy_options/0]).

-type kuberl_policy_v1beta1_run_as_user_strategy_options() ::
    #{ 'ranges' => list(),
       'rule' := binary()
     }.

encode(#{ 'ranges' := Ranges,
          'rule' := Rule
        }) ->
    #{ 'ranges' => Ranges,
       'rule' => Rule
     }.
