-module(kuberl_v1beta1_user_info).

-export([encode/1]).

-export_type([kuberl_v1beta1_user_info/0]).

-type kuberl_v1beta1_user_info() ::
    #{ 'extra' => maps:map(),
       'groups' => list(),
       'uid' => binary(),
       'username' => binary()
     }.

encode(#{ 'extra' := Extra,
          'groups' := Groups,
          'uid' := Uid,
          'username' := Username
        }) ->
    #{ 'extra' => Extra,
       'groups' => Groups,
       'uid' => Uid,
       'username' => Username
     }.
