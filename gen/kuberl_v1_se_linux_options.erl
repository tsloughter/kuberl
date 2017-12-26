-module(kuberl_v1_se_linux_options).

-export([encode/1]).

-export_type([kuberl_v1_se_linux_options/0]).

-type kuberl_v1_se_linux_options() ::
    #{ 'level' => binary(),
       'role' => binary(),
       'type' => binary(),
       'user' => binary()
     }.

encode(#{ 'level' := Level,
          'role' := Role,
          'type' := Type,
          'user' := User
        }) ->
    #{ 'level' => Level,
       'role' => Role,
       'type' => Type,
       'user' => User
     }.
