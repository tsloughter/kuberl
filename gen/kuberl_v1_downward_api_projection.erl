-module(kuberl_v1_downward_api_projection).

-export([encode/1]).

-export_type([kuberl_v1_downward_api_projection/0]).

-type kuberl_v1_downward_api_projection() ::
    #{ 'items' => list()
     }.

encode(#{ 'items' := Items
        }) ->
    #{ 'items' => Items
     }.
