-module(kuberl_v1_token_review_spec).

-export([encode/1]).

-export_type([kuberl_v1_token_review_spec/0]).

-type kuberl_v1_token_review_spec() ::
    #{ 'token' => binary()
     }.

encode(#{ 'token' := Token
        }) ->
    #{ 'token' => Token
     }.
