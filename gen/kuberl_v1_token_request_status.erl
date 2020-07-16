-module(kuberl_v1_token_request_status).

-export([encode/1]).

-export_type([kuberl_v1_token_request_status/0]).

-type kuberl_v1_token_request_status() ::
    #{ 'expirationTimestamp' := kuberl_date_time:kuberl_date_time(),
       'token' := binary()
     }.

encode(#{ 'expirationTimestamp' := ExpirationTimestamp,
          'token' := Token
        }) ->
    #{ 'expirationTimestamp' => ExpirationTimestamp,
       'token' => Token
     }.
