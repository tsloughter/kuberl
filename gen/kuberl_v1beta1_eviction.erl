-module(kuberl_v1beta1_eviction).

-export([encode/1]).

-export_type([kuberl_v1beta1_eviction/0]).

-type kuberl_v1beta1_eviction() ::
    #{ 'apiVersion' => binary(),
       'deleteOptions' => kuberl_v1_delete_options:kuberl_v1_delete_options(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'deleteOptions' := DeleteOptions,
          'kind' := Kind,
          'metadata' := Metadata
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'deleteOptions' => DeleteOptions,
       'kind' => Kind,
       'metadata' => Metadata
     }.
