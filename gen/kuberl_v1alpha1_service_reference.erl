-module(kuberl_v1alpha1_service_reference).

-export([encode/1]).

-export_type([kuberl_v1alpha1_service_reference/0]).

-type kuberl_v1alpha1_service_reference() ::
    #{ 'name' := binary(),
       'namespace' := binary()
     }.

encode(#{ 'name' := Name,
          'namespace' := Namespace
        }) ->
    #{ 'name' => Name,
       'namespace' => Namespace
     }.
