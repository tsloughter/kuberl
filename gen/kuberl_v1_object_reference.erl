-module(kuberl_v1_object_reference).

-export([encode/1]).

-export_type([kuberl_v1_object_reference/0]).

-type kuberl_v1_object_reference() ::
    #{ 'apiVersion' => binary(),
       'fieldPath' => binary(),
       'kind' => binary(),
       'name' => binary(),
       'namespace' => binary(),
       'resourceVersion' => binary(),
       'uid' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'fieldPath' := FieldPath,
          'kind' := Kind,
          'name' := Name,
          'namespace' := Namespace,
          'resourceVersion' := ResourceVersion,
          'uid' := Uid
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'fieldPath' => FieldPath,
       'kind' => Kind,
       'name' => Name,
       'namespace' => Namespace,
       'resourceVersion' => ResourceVersion,
       'uid' => Uid
     }.
