-module(kuberl_v1beta1_certificate_signing_request_status).

-export([encode/1]).

-export_type([kuberl_v1beta1_certificate_signing_request_status/0]).

-type kuberl_v1beta1_certificate_signing_request_status() ::
    #{ 'certificate' => kuberl_byte_array:kuberl_byte_array(),
       'conditions' => list()
     }.

encode(#{ 'certificate' := Certificate,
          'conditions' := Conditions
        }) ->
    #{ 'certificate' => Certificate,
       'conditions' => Conditions
     }.
