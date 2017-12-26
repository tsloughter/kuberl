-module(kuberl_v1_initializer).

-export([encode/1]).

-export_type([kuberl_v1_initializer/0]).

-type kuberl_v1_initializer() ::
    #{ 'name' := binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
