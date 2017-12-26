-module(kuberl_v1beta2_replica_set_status).

-export([encode/1]).

-export_type([kuberl_v1beta2_replica_set_status/0]).

-type kuberl_v1beta2_replica_set_status() ::
    #{ 'availableReplicas' => integer(),
       'conditions' => list(),
       'fullyLabeledReplicas' => integer(),
       'observedGeneration' => integer(),
       'readyReplicas' => integer(),
       'replicas' := integer()
     }.

encode(#{ 'availableReplicas' := AvailableReplicas,
          'conditions' := Conditions,
          'fullyLabeledReplicas' := FullyLabeledReplicas,
          'observedGeneration' := ObservedGeneration,
          'readyReplicas' := ReadyReplicas,
          'replicas' := Replicas
        }) ->
    #{ 'availableReplicas' => AvailableReplicas,
       'conditions' => Conditions,
       'fullyLabeledReplicas' => FullyLabeledReplicas,
       'observedGeneration' => ObservedGeneration,
       'readyReplicas' => ReadyReplicas,
       'replicas' => Replicas
     }.
