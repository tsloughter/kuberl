-module(kuberl_v1_initializers).

-export([encode/1]).

-export_type([kuberl_v1_initializers/0]).

-type kuberl_v1_initializers() ::
    #{ 'pending' := list(),
       'result' => kuberl_v1_status:kuberl_v1_status()
     }.

encode(#{ 'pending' := Pending,
          'result' := Result
        }) ->
    #{ 'pending' => Pending,
       'result' => Result
     }.
