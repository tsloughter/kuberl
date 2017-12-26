-module(kuberl_v1_toleration).

-export([encode/1]).

-export_type([kuberl_v1_toleration/0]).

-type kuberl_v1_toleration() ::
    #{ 'effect' => binary(),
       'key' => binary(),
       'operator' => binary(),
       'tolerationSeconds' => integer(),
       'value' => binary()
     }.

encode(#{ 'effect' := Effect,
          'key' := Key,
          'operator' := Operator,
          'tolerationSeconds' := TolerationSeconds,
          'value' := Value
        }) ->
    #{ 'effect' => Effect,
       'key' => Key,
       'operator' => Operator,
       'tolerationSeconds' => TolerationSeconds,
       'value' => Value
     }.
