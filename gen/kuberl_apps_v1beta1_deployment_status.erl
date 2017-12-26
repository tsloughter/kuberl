-module(kuberl_apps_v1beta1_deployment_status).

-export([encode/1]).

-export_type([kuberl_apps_v1beta1_deployment_status/0]).

-type kuberl_apps_v1beta1_deployment_status() ::
    #{ 'availableReplicas' => integer(),
       'collisionCount' => integer(),
       'conditions' => list(),
       'observedGeneration' => integer(),
       'readyReplicas' => integer(),
       'replicas' => integer(),
       'unavailableReplicas' => integer(),
       'updatedReplicas' => integer()
     }.

encode(#{ 'availableReplicas' := AvailableReplicas,
          'collisionCount' := CollisionCount,
          'conditions' := Conditions,
          'observedGeneration' := ObservedGeneration,
          'readyReplicas' := ReadyReplicas,
          'replicas' := Replicas,
          'unavailableReplicas' := UnavailableReplicas,
          'updatedReplicas' := UpdatedReplicas
        }) ->
    #{ 'availableReplicas' => AvailableReplicas,
       'collisionCount' => CollisionCount,
       'conditions' => Conditions,
       'observedGeneration' => ObservedGeneration,
       'readyReplicas' => ReadyReplicas,
       'replicas' => Replicas,
       'unavailableReplicas' => UnavailableReplicas,
       'updatedReplicas' => UpdatedReplicas
     }.
