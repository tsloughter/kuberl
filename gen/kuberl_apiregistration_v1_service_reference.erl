-module(kuberl_apiregistration_v1_service_reference).

-export([encode/1]).

-export_type([kuberl_apiregistration_v1_service_reference/0]).

-type kuberl_apiregistration_v1_service_reference() ::
    #{ 'name' => binary(),
       'namespace' => binary(),
       'port' => integer()
     }.

encode(#{ 'name' := Name,
          'namespace' := Namespace,
          'port' := Port
        }) ->
    #{ 'name' => Name,
       'namespace' => Namespace,
       'port' => Port
     }.
