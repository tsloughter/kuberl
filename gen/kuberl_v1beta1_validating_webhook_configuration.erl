-module(kuberl_v1beta1_validating_webhook_configuration).

-export([encode/1]).

-export_type([kuberl_v1beta1_validating_webhook_configuration/0]).

-type kuberl_v1beta1_validating_webhook_configuration() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'webhooks' => list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'webhooks' := Webhooks
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'webhooks' => Webhooks
     }.
