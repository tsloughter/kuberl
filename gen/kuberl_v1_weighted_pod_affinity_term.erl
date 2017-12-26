-module(kuberl_v1_weighted_pod_affinity_term).

-export([encode/1]).

-export_type([kuberl_v1_weighted_pod_affinity_term/0]).

-type kuberl_v1_weighted_pod_affinity_term() ::
    #{ 'podAffinityTerm' := kuberl_v1_pod_affinity_term:kuberl_v1_pod_affinity_term(),
       'weight' := integer()
     }.

encode(#{ 'podAffinityTerm' := PodAffinityTerm,
          'weight' := Weight
        }) ->
    #{ 'podAffinityTerm' => PodAffinityTerm,
       'weight' => Weight
     }.
