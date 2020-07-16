-module(kuberl_v1_pod_readiness_gate).

-export([encode/1]).

-export_type([kuberl_v1_pod_readiness_gate/0]).

-type kuberl_v1_pod_readiness_gate() ::
    #{ 'conditionType' := binary()
     }.

encode(#{ 'conditionType' := ConditionType
        }) ->
    #{ 'conditionType' => ConditionType
     }.
