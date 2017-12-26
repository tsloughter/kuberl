-module(kuberl_v1_service_account).

-export([encode/1]).

-export_type([kuberl_v1_service_account/0]).

-type kuberl_v1_service_account() ::
    #{ 'apiVersion' => binary(),
       'automountServiceAccountToken' => boolean(),
       'imagePullSecrets' => list(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'secrets' => list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'automountServiceAccountToken' := AutomountServiceAccountToken,
          'imagePullSecrets' := ImagePullSecrets,
          'kind' := Kind,
          'metadata' := Metadata,
          'secrets' := Secrets
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'automountServiceAccountToken' => AutomountServiceAccountToken,
       'imagePullSecrets' => ImagePullSecrets,
       'kind' => Kind,
       'metadata' => Metadata,
       'secrets' => Secrets
     }.
