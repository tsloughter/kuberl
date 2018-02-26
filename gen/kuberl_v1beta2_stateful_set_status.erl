-module(kuberl_v1beta2_stateful_set_status).

-export([encode/1]).

-export_type([kuberl_v1beta2_stateful_set_status/0]).

-type kuberl_v1beta2_stateful_set_status() ::
    #{ 'collisionCount' => integer(),
       'conditions' => list(),
       'currentReplicas' => integer(),
       'currentRevision' => binary(),
       'observedGeneration' => integer(),
       'readyReplicas' => integer(),
       'replicas' := integer(),
       'updateRevision' => binary(),
       'updatedReplicas' => integer()
     }.

encode(#{ 'collisionCount' := CollisionCount,
          'conditions' := Conditions,
          'currentReplicas' := CurrentReplicas,
          'currentRevision' := CurrentRevision,
          'observedGeneration' := ObservedGeneration,
          'readyReplicas' := ReadyReplicas,
          'replicas' := Replicas,
          'updateRevision' := UpdateRevision,
          'updatedReplicas' := UpdatedReplicas
        }) ->
    #{ 'collisionCount' => CollisionCount,
       'conditions' => Conditions,
       'currentReplicas' => CurrentReplicas,
       'currentRevision' => CurrentRevision,
       'observedGeneration' => ObservedGeneration,
       'readyReplicas' => ReadyReplicas,
       'replicas' => Replicas,
       'updateRevision' => UpdateRevision,
       'updatedReplicas' => UpdatedReplicas
     }.
