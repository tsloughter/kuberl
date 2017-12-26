-module(kuberl_v1_capabilities).

-export([encode/1]).

-export_type([kuberl_v1_capabilities/0]).

-type kuberl_v1_capabilities() ::
    #{ 'add' => list(),
       'drop' => list()
     }.

encode(#{ 'add' := Add,
          'drop' := Drop
        }) ->
    #{ 'add' => Add,
       'drop' => Drop
     }.
