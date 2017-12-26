-module(kuberl_v1_secret_reference).

-export([encode/1]).

-export_type([kuberl_v1_secret_reference/0]).

-type kuberl_v1_secret_reference() ::
    #{ 'name' => binary(),
       'namespace' => binary()
     }.

encode(#{ 'name' := Name,
          'namespace' := Namespace
        }) ->
    #{ 'name' => Name,
       'namespace' => Namespace
     }.
