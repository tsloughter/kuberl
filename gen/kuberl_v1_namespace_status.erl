-module(kuberl_v1_namespace_status).

-export([encode/1]).

-export_type([kuberl_v1_namespace_status/0]).

-type kuberl_v1_namespace_status() ::
    #{ 'phase' => binary()
     }.

encode(#{ 'phase' := Phase
        }) ->
    #{ 'phase' => Phase
     }.
