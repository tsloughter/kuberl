-module(kuberl_v1_lifecycle).

-export([encode/1]).

-export_type([kuberl_v1_lifecycle/0]).

-type kuberl_v1_lifecycle() ::
    #{ 'postStart' => kuberl_v1_handler:kuberl_v1_handler(),
       'preStop' => kuberl_v1_handler:kuberl_v1_handler()
     }.

encode(#{ 'postStart' := PostStart,
          'preStop' := PreStop
        }) ->
    #{ 'postStart' => PostStart,
       'preStop' => PreStop
     }.
