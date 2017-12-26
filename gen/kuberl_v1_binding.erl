-module(kuberl_v1_binding).

-export([encode/1]).

-export_type([kuberl_v1_binding/0]).

-type kuberl_v1_binding() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'target' := kuberl_v1_object_reference:kuberl_v1_object_reference()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'target' := Target
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'target' => Target
     }.
