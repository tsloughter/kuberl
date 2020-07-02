-module(kuberl_v1_token_review_spec).

-export([encode/1]).

-export_type([kuberl_v1_token_review_spec/0]).

-type kuberl_v1_token_review_spec() ::
    #{ 'audiences' => list(),
       'token' => binary()
     }.

encode(#{ 'audiences' := Audiences,
          'token' := Token
        }) ->
    #{ 'audiences' => Audiences,
       'token' => Token
     }.
