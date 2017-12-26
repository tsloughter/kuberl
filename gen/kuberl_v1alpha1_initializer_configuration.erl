-module(kuberl_v1alpha1_initializer_configuration).

-export([encode/1]).

-export_type([kuberl_v1alpha1_initializer_configuration/0]).

-type kuberl_v1alpha1_initializer_configuration() ::
    #{ 'apiVersion' => binary(),
       'initializers' => list(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'initializers' := Initializers,
          'kind' := Kind,
          'metadata' := Metadata
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'initializers' => Initializers,
       'kind' => Kind,
       'metadata' => Metadata
     }.
