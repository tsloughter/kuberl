-module(kuberl_v1_affinity).

-export([encode/1]).

-export_type([kuberl_v1_affinity/0]).

-type kuberl_v1_affinity() ::
    #{ 'nodeAffinity' => kuberl_v1_node_affinity:kuberl_v1_node_affinity(),
       'podAffinity' => kuberl_v1_pod_affinity:kuberl_v1_pod_affinity(),
       'podAntiAffinity' => kuberl_v1_pod_anti_affinity:kuberl_v1_pod_anti_affinity()
     }.

encode(#{ 'nodeAffinity' := NodeAffinity,
          'podAffinity' := PodAffinity,
          'podAntiAffinity' := PodAntiAffinity
        }) ->
    #{ 'nodeAffinity' => NodeAffinity,
       'podAffinity' => PodAffinity,
       'podAntiAffinity' => PodAntiAffinity
     }.
