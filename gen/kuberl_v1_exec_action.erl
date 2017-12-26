-module(kuberl_v1_exec_action).

-export([encode/1]).

-export_type([kuberl_v1_exec_action/0]).

-type kuberl_v1_exec_action() ::
    #{ 'command' => list()
     }.

encode(#{ 'command' := Command
        }) ->
    #{ 'command' => Command
     }.
