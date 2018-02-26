-module(kuberl_apiregistration_v1beta1_service_reference).

-export([encode/1]).

-export_type([kuberl_apiregistration_v1beta1_service_reference/0]).

-type kuberl_apiregistration_v1beta1_service_reference() ::
    #{ 'name' => binary(),
       'namespace' => binary()
     }.

encode(#{ 'name' := Name,
          'namespace' := Namespace
        }) ->
    #{ 'name' => Name,
       'namespace' => Namespace
     }.
