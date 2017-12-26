-module(kuberl_v1_object_meta).

-export([encode/1]).

-export_type([kuberl_v1_object_meta/0]).

-type kuberl_v1_object_meta() ::
    #{ 'annotations' => maps:map(),
       'clusterName' => binary(),
       'creationTimestamp' => kuberl_date_time:kuberl_date_time(),
       'deletionGracePeriodSeconds' => integer(),
       'deletionTimestamp' => kuberl_date_time:kuberl_date_time(),
       'finalizers' => list(),
       'generateName' => binary(),
       'generation' => integer(),
       'initializers' => kuberl_v1_initializers:kuberl_v1_initializers(),
       'labels' => maps:map(),
       'name' => binary(),
       'namespace' => binary(),
       'ownerReferences' => list(),
       'resourceVersion' => binary(),
       'selfLink' => binary(),
       'uid' => binary()
     }.

encode(#{ 'annotations' := Annotations,
          'clusterName' := ClusterName,
          'creationTimestamp' := CreationTimestamp,
          'deletionGracePeriodSeconds' := DeletionGracePeriodSeconds,
          'deletionTimestamp' := DeletionTimestamp,
          'finalizers' := Finalizers,
          'generateName' := GenerateName,
          'generation' := Generation,
          'initializers' := Initializers,
          'labels' := Labels,
          'name' := Name,
          'namespace' := Namespace,
          'ownerReferences' := OwnerReferences,
          'resourceVersion' := ResourceVersion,
          'selfLink' := SelfLink,
          'uid' := Uid
        }) ->
    #{ 'annotations' => Annotations,
       'clusterName' => ClusterName,
       'creationTimestamp' => CreationTimestamp,
       'deletionGracePeriodSeconds' => DeletionGracePeriodSeconds,
       'deletionTimestamp' => DeletionTimestamp,
       'finalizers' => Finalizers,
       'generateName' => GenerateName,
       'generation' => Generation,
       'initializers' => Initializers,
       'labels' => Labels,
       'name' => Name,
       'namespace' => Namespace,
       'ownerReferences' => OwnerReferences,
       'resourceVersion' => ResourceVersion,
       'selfLink' => SelfLink,
       'uid' => Uid
     }.
