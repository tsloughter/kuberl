-module(kuberl_v1_node_selector).

-export([encode/1]).

-export_type([kuberl_v1_node_selector/0]).

-type kuberl_v1_node_selector() ::
    #{ 'nodeSelectorTerms' := list()
     }.

encode(#{ 'nodeSelectorTerms' := NodeSelectorTerms
        }) ->
    #{ 'nodeSelectorTerms' => NodeSelectorTerms
     }.
