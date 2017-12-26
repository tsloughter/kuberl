-module(kuberl_v1beta1_certificate_signing_request_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_certificate_signing_request_spec/0]).

-type kuberl_v1beta1_certificate_signing_request_spec() ::
    #{ 'extra' => maps:map(),
       'groups' => list(),
       'request' := kuberl_byte_array:kuberl_byte_array(),
       'uid' => binary(),
       'usages' => list(),
       'username' => binary()
     }.

encode(#{ 'extra' := Extra,
          'groups' := Groups,
          'request' := Request,
          'uid' := Uid,
          'usages' := Usages,
          'username' := Username
        }) ->
    #{ 'extra' => Extra,
       'groups' => Groups,
       'request' => Request,
       'uid' => Uid,
       'usages' => Usages,
       'username' => Username
     }.
