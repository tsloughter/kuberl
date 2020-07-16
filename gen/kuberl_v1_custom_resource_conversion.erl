-module(kuberl_v1_custom_resource_conversion).

-export([encode/1]).

-export_type([kuberl_v1_custom_resource_conversion/0]).

-type kuberl_v1_custom_resource_conversion() ::
    #{ 'strategy' := binary(),
       'webhook' => kuberl_v1_webhook_conversion:kuberl_v1_webhook_conversion()
     }.

encode(#{ 'strategy' := Strategy,
          'webhook' := Webhook
        }) ->
    #{ 'strategy' => Strategy,
       'webhook' => Webhook
     }.
