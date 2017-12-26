-module(kuberl_v1alpha1_cluster_role_binding).

-export([encode/1]).

-export_type([kuberl_v1alpha1_cluster_role_binding/0]).

-type kuberl_v1alpha1_cluster_role_binding() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'roleRef' := kuberl_v1alpha1_role_ref:kuberl_v1alpha1_role_ref(),
       'subjects' := list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'roleRef' := RoleRef,
          'subjects' := Subjects
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'roleRef' => RoleRef,
       'subjects' => Subjects
     }.
