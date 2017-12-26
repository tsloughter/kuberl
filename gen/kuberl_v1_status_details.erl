-module(kuberl_v1_status_details).

-export([encode/1]).

-export_type([kuberl_v1_status_details/0]).

-type kuberl_v1_status_details() ::
    #{ 'causes' => list(),
       'group' => binary(),
       'kind' => binary(),
       'name' => binary(),
       'retryAfterSeconds' => integer(),
       'uid' => binary()
     }.

encode(#{ 'causes' := Causes,
          'group' := Group,
          'kind' := Kind,
          'name' := Name,
          'retryAfterSeconds' := RetryAfterSeconds,
          'uid' := Uid
        }) ->
    #{ 'causes' => Causes,
       'group' => Group,
       'kind' => Kind,
       'name' => Name,
       'retryAfterSeconds' => RetryAfterSeconds,
       'uid' => Uid
     }.
