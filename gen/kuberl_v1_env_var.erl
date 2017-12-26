-module(kuberl_v1_env_var).

-export([encode/1]).

-export_type([kuberl_v1_env_var/0]).

-type kuberl_v1_env_var() ::
    #{ 'name' := binary(),
       'value' => binary(),
       'valueFrom' => kuberl_v1_env_var_source:kuberl_v1_env_var_source()
     }.

encode(#{ 'name' := Name,
          'value' := Value,
          'valueFrom' := ValueFrom
        }) ->
    #{ 'name' => Name,
       'value' => Value,
       'valueFrom' => ValueFrom
     }.
