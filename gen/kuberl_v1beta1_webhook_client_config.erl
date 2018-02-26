-module(kuberl_v1beta1_webhook_client_config).

-export([encode/1]).

-export_type([kuberl_v1beta1_webhook_client_config/0]).

-type kuberl_v1beta1_webhook_client_config() ::
    #{ 'caBundle' := kuberl_byte_array:kuberl_byte_array(),
       'service' => kuberl_admissionregistration_v1beta1_service_reference:kuberl_admissionregistration_v1beta1_service_reference(),
       'url' => binary()
     }.

encode(#{ 'caBundle' := CaBundle,
          'service' := Service,
          'url' := Url
        }) ->
    #{ 'caBundle' => CaBundle,
       'service' => Service,
       'url' => Url
     }.
