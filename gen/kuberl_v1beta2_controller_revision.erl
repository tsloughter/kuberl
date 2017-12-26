-module(kuberl_v1beta2_controller_revision).

-export([encode/1]).

-export_type([kuberl_v1beta2_controller_revision/0]).

-type kuberl_v1beta2_controller_revision() ::
    #{ 'apiVersion' => binary(),
       'data' => kuberl_runtime_raw_extension:kuberl_runtime_raw_extension(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'revision' := integer()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'data' := Data,
          'kind' := Kind,
          'metadata' := Metadata,
          'revision' := Revision
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'data' => Data,
       'kind' => Kind,
       'metadata' => Metadata,
       'revision' => Revision
     }.
