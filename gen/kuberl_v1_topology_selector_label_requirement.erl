-module(kuberl_v1_topology_selector_label_requirement).

-export([encode/1]).

-export_type([kuberl_v1_topology_selector_label_requirement/0]).

-type kuberl_v1_topology_selector_label_requirement() ::
    #{ 'key' := binary(),
       'values' := list()
     }.

encode(#{ 'key' := Key,
          'values' := Values
        }) ->
    #{ 'key' => Key,
       'values' => Values
     }.
