-module(kuberl_v1alpha1_runtime_class).

-export([encode/1]).

-export_type([kuberl_v1alpha1_runtime_class/0]).

-type kuberl_v1alpha1_runtime_class() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' := kuberl_v1alpha1_runtime_class_spec:kuberl_v1alpha1_runtime_class_spec()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec
     }.
