-module(kuberl_v1alpha1_overhead).

-export([encode/1]).

-export_type([kuberl_v1alpha1_overhead/0]).

-type kuberl_v1alpha1_overhead() ::
    #{ 'podFixed' => maps:map()
     }.

encode(#{ 'podFixed' := PodFixed
        }) ->
    #{ 'podFixed' => PodFixed
     }.
