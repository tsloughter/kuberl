-module(kuberl_v1_preconditions).

-export([encode/1]).

-export_type([kuberl_v1_preconditions/0]).

-type kuberl_v1_preconditions() ::
    #{ 'uid' => binary()
     }.

encode(#{ 'uid' := Uid
        }) ->
    #{ 'uid' => Uid
     }.
