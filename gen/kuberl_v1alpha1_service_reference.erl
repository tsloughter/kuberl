-module(kuberl_v1alpha1_service_reference).

-export([encode/1]).

-export_type([kuberl_v1alpha1_service_reference/0]).

-type kuberl_v1alpha1_service_reference() ::
    #{ 'name' := binary(),
       'namespace' := binary(),
       'path' => binary(),
       'port' => integer()
     }.

encode(#{ 'name' := Name,
          'namespace' := Namespace,
          'path' := Path,
          'port' := Port
        }) ->
    #{ 'name' => Name,
       'namespace' => Namespace,
       'path' => Path,
       'port' => Port
     }.
