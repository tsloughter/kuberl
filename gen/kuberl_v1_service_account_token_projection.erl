-module(kuberl_v1_service_account_token_projection).

-export([encode/1]).

-export_type([kuberl_v1_service_account_token_projection/0]).

-type kuberl_v1_service_account_token_projection() ::
    #{ 'audience' => binary(),
       'expirationSeconds' => integer(),
       'path' := binary()
     }.

encode(#{ 'audience' := Audience,
          'expirationSeconds' := ExpirationSeconds,
          'path' := Path
        }) ->
    #{ 'audience' => Audience,
       'expirationSeconds' => ExpirationSeconds,
       'path' => Path
     }.
