-module(kuberl_v1_webhook_conversion).

-export([encode/1]).

-export_type([kuberl_v1_webhook_conversion/0]).

-type kuberl_v1_webhook_conversion() ::
    #{ 'clientConfig' => kuberl_apiextensions_v1_webhook_client_config:kuberl_apiextensions_v1_webhook_client_config(),
       'conversionReviewVersions' := list()
     }.

encode(#{ 'clientConfig' := ClientConfig,
          'conversionReviewVersions' := ConversionReviewVersions
        }) ->
    #{ 'clientConfig' => ClientConfig,
       'conversionReviewVersions' => ConversionReviewVersions
     }.
