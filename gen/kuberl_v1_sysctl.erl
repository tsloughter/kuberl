-module(kuberl_v1_sysctl).

-export([encode/1]).

-export_type([kuberl_v1_sysctl/0]).

-type kuberl_v1_sysctl() ::
    #{ 'name' := binary(),
       'value' := binary()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
