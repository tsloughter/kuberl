-module(kuberl_v1beta1_token_review_status).

-export([encode/1]).

-export_type([kuberl_v1beta1_token_review_status/0]).

-type kuberl_v1beta1_token_review_status() ::
    #{ 'audiences' => list(),
       'authenticated' => boolean(),
       'error' => binary(),
       'user' => kuberl_v1beta1_user_info:kuberl_v1beta1_user_info()
     }.

encode(#{ 'audiences' := Audiences,
          'authenticated' := Authenticated,
          'error' := Error,
          'user' := User
        }) ->
    #{ 'audiences' => Audiences,
       'authenticated' => Authenticated,
       'error' => Error,
       'user' => User
     }.
