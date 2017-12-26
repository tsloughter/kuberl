-module(kuberl_v1_pod_affinity_term).

-export([encode/1]).

-export_type([kuberl_v1_pod_affinity_term/0]).

-type kuberl_v1_pod_affinity_term() ::
    #{ 'labelSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'namespaces' => list(),
       'topologyKey' => binary()
     }.

encode(#{ 'labelSelector' := LabelSelector,
          'namespaces' := Namespaces,
          'topologyKey' := TopologyKey
        }) ->
    #{ 'labelSelector' => LabelSelector,
       'namespaces' => Namespaces,
       'topologyKey' => TopologyKey
     }.
