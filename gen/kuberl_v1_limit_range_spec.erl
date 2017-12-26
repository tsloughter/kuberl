-module(kuberl_v1_limit_range_spec).

-export([encode/1]).

-export_type([kuberl_v1_limit_range_spec/0]).

-type kuberl_v1_limit_range_spec() ::
    #{ 'limits' := list()
     }.

encode(#{ 'limits' := Limits
        }) ->
    #{ 'limits' => Limits
     }.
