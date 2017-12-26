-module(kuberl_v1alpha1_external_admission_hook_configuration).

-export([encode/1]).

-export_type([kuberl_v1alpha1_external_admission_hook_configuration/0]).

-type kuberl_v1alpha1_external_admission_hook_configuration() ::
    #{ 'apiVersion' => binary(),
       'externalAdmissionHooks' => list(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'externalAdmissionHooks' := ExternalAdmissionHooks,
          'kind' := Kind,
          'metadata' := Metadata
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'externalAdmissionHooks' => ExternalAdmissionHooks,
       'kind' => Kind,
       'metadata' => Metadata
     }.
