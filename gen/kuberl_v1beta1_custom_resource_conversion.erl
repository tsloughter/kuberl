-module(kuberl_v1beta1_custom_resource_conversion).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_conversion/0]).

-type kuberl_v1beta1_custom_resource_conversion() ::
    #{ 'conversionReviewVersions' => list(),
       'strategy' := binary(),
       'webhookClientConfig' => kuberl_apiextensions_v1beta1_webhook_client_config:kuberl_apiextensions_v1beta1_webhook_client_config()
     }.

encode(#{ 'conversionReviewVersions' := ConversionReviewVersions,
          'strategy' := Strategy,
          'webhookClientConfig' := WebhookClientConfig
        }) ->
    #{ 'conversionReviewVersions' => ConversionReviewVersions,
       'strategy' => Strategy,
       'webhookClientConfig' => WebhookClientConfig
     }.
