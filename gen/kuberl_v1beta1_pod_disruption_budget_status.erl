-module(kuberl_v1beta1_pod_disruption_budget_status).

-export([encode/1]).

-export_type([kuberl_v1beta1_pod_disruption_budget_status/0]).

-type kuberl_v1beta1_pod_disruption_budget_status() ::
    #{ 'currentHealthy' := integer(),
       'desiredHealthy' := integer(),
       'disruptedPods' => maps:map(),
       'disruptionsAllowed' := integer(),
       'expectedPods' := integer(),
       'observedGeneration' => integer()
     }.

encode(#{ 'currentHealthy' := CurrentHealthy,
          'desiredHealthy' := DesiredHealthy,
          'disruptedPods' := DisruptedPods,
          'disruptionsAllowed' := DisruptionsAllowed,
          'expectedPods' := ExpectedPods,
          'observedGeneration' := ObservedGeneration
        }) ->
    #{ 'currentHealthy' => CurrentHealthy,
       'desiredHealthy' => DesiredHealthy,
       'disruptedPods' => DisruptedPods,
       'disruptionsAllowed' => DisruptionsAllowed,
       'expectedPods' => ExpectedPods,
       'observedGeneration' => ObservedGeneration
     }.
