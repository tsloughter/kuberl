-module(kuberl_v1alpha1_webhook).

-export([encode/1]).

-export_type([kuberl_v1alpha1_webhook/0]).

-type kuberl_v1alpha1_webhook() ::
    #{ 'clientConfig' := kuberl_v1alpha1_webhook_client_config:kuberl_v1alpha1_webhook_client_config(),
       'throttle' => kuberl_v1alpha1_webhook_throttle_config:kuberl_v1alpha1_webhook_throttle_config()
     }.

encode(#{ 'clientConfig' := ClientConfig,
          'throttle' := Throttle
        }) ->
    #{ 'clientConfig' => ClientConfig,
       'throttle' => Throttle
     }.
