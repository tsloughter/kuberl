-module(kuberl_v1alpha1_admission_hook_client_config).

-export([encode/1]).

-export_type([kuberl_v1alpha1_admission_hook_client_config/0]).

-type kuberl_v1alpha1_admission_hook_client_config() ::
    #{ 'caBundle' := kuberl_byte_array:kuberl_byte_array(),
       'service' := kuberl_v1alpha1_service_reference:kuberl_v1alpha1_service_reference()
     }.

encode(#{ 'caBundle' := CaBundle,
          'service' := Service
        }) ->
    #{ 'caBundle' => CaBundle,
       'service' => Service
     }.
