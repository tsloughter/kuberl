-module(kuberl_v1beta1_daemon_set_status).

-export([encode/1]).

-export_type([kuberl_v1beta1_daemon_set_status/0]).

-type kuberl_v1beta1_daemon_set_status() ::
    #{ 'collisionCount' => integer(),
       'conditions' => list(),
       'currentNumberScheduled' := integer(),
       'desiredNumberScheduled' := integer(),
       'numberAvailable' => integer(),
       'numberMisscheduled' := integer(),
       'numberReady' := integer(),
       'numberUnavailable' => integer(),
       'observedGeneration' => integer(),
       'updatedNumberScheduled' => integer()
     }.

encode(#{ 'collisionCount' := CollisionCount,
          'conditions' := Conditions,
          'currentNumberScheduled' := CurrentNumberScheduled,
          'desiredNumberScheduled' := DesiredNumberScheduled,
          'numberAvailable' := NumberAvailable,
          'numberMisscheduled' := NumberMisscheduled,
          'numberReady' := NumberReady,
          'numberUnavailable' := NumberUnavailable,
          'observedGeneration' := ObservedGeneration,
          'updatedNumberScheduled' := UpdatedNumberScheduled
        }) ->
    #{ 'collisionCount' => CollisionCount,
       'conditions' => Conditions,
       'currentNumberScheduled' => CurrentNumberScheduled,
       'desiredNumberScheduled' => DesiredNumberScheduled,
       'numberAvailable' => NumberAvailable,
       'numberMisscheduled' => NumberMisscheduled,
       'numberReady' => NumberReady,
       'numberUnavailable' => NumberUnavailable,
       'observedGeneration' => ObservedGeneration,
       'updatedNumberScheduled' => UpdatedNumberScheduled
     }.
