-module(kuberl_v1alpha1_audit_sink).

-export([encode/1]).

-export_type([kuberl_v1alpha1_audit_sink/0]).

-type kuberl_v1alpha1_audit_sink() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1alpha1_audit_sink_spec:kuberl_v1alpha1_audit_sink_spec()
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
