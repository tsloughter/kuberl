-module(kuberl_v1alpha1_pod_preset).

-export([encode/1]).

-export_type([kuberl_v1alpha1_pod_preset/0]).

-type kuberl_v1alpha1_pod_preset() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1alpha1_pod_preset_spec:kuberl_v1alpha1_pod_preset_spec()
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
