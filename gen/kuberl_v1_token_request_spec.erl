-module(kuberl_v1_token_request_spec).

-export([encode/1]).

-export_type([kuberl_v1_token_request_spec/0]).

-type kuberl_v1_token_request_spec() ::
    #{ 'audiences' := list(),
       'boundObjectRef' => kuberl_v1_bound_object_reference:kuberl_v1_bound_object_reference(),
       'expirationSeconds' => integer()
     }.

encode(#{ 'audiences' := Audiences,
          'boundObjectRef' := BoundObjectRef,
          'expirationSeconds' := ExpirationSeconds
        }) ->
    #{ 'audiences' => Audiences,
       'boundObjectRef' => BoundObjectRef,
       'expirationSeconds' => ExpirationSeconds
     }.
