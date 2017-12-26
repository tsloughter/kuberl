-module(kuberl_v1_local_object_reference).

-export([encode/1]).

-export_type([kuberl_v1_local_object_reference/0]).

-type kuberl_v1_local_object_reference() ::
    #{ 'name' => binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
