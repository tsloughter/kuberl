-module(kuberl_v1alpha1_role).

-export([encode/1]).

-export_type([kuberl_v1alpha1_role/0]).

-type kuberl_v1alpha1_role() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'rules' := list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'rules' := Rules
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'rules' => Rules
     }.
