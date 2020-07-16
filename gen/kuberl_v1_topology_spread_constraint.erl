-module(kuberl_v1_topology_spread_constraint).

-export([encode/1]).

-export_type([kuberl_v1_topology_spread_constraint/0]).

-type kuberl_v1_topology_spread_constraint() ::
    #{ 'labelSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'maxSkew' := integer(),
       'topologyKey' := binary(),
       'whenUnsatisfiable' := binary()
     }.

encode(#{ 'labelSelector' := LabelSelector,
          'maxSkew' := MaxSkew,
          'topologyKey' := TopologyKey,
          'whenUnsatisfiable' := WhenUnsatisfiable
        }) ->
    #{ 'labelSelector' => LabelSelector,
       'maxSkew' => MaxSkew,
       'topologyKey' => TopologyKey,
       'whenUnsatisfiable' => WhenUnsatisfiable
     }.
