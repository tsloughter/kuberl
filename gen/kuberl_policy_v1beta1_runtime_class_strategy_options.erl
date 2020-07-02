-module(kuberl_policy_v1beta1_runtime_class_strategy_options).

-export([encode/1]).

-export_type([kuberl_policy_v1beta1_runtime_class_strategy_options/0]).

-type kuberl_policy_v1beta1_runtime_class_strategy_options() ::
    #{ 'allowedRuntimeClassNames' := list(),
       'defaultRuntimeClassName' => binary()
     }.

encode(#{ 'allowedRuntimeClassNames' := AllowedRuntimeClassNames,
          'defaultRuntimeClassName' := DefaultRuntimeClassName
        }) ->
    #{ 'allowedRuntimeClassNames' => AllowedRuntimeClassNames,
       'defaultRuntimeClassName' => DefaultRuntimeClassName
     }.
