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
       'labels' => maps:map(),
       'managedFields' => list(),
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
          'labels' := Labels,
          'managedFields' := ManagedFields,
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
       'labels' => Labels,
       'managedFields' => ManagedFields,
       'name' => Name,
       'namespace' => Namespace,
       'ownerReferences' => OwnerReferences,
       'resourceVersion' => ResourceVersion,
       'selfLink' => SelfLink,
       'uid' => Uid
     }.
