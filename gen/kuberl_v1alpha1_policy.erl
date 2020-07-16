-module(kuberl_v1alpha1_policy).

-export([encode/1]).

-export_type([kuberl_v1alpha1_policy/0]).

-type kuberl_v1alpha1_policy() ::
    #{ 'level' := binary(),
       'stages' => list()
     }.

encode(#{ 'level' := Level,
          'stages' := Stages
        }) ->
    #{ 'level' => Level,
       'stages' => Stages
     }.
