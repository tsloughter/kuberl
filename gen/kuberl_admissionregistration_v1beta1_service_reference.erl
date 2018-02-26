-module(kuberl_admissionregistration_v1beta1_service_reference).

-export([encode/1]).

-export_type([kuberl_admissionregistration_v1beta1_service_reference/0]).

-type kuberl_admissionregistration_v1beta1_service_reference() ::
    #{ 'name' := binary(),
       'namespace' := binary(),
       'path' => binary()
     }.

encode(#{ 'name' := Name,
          'namespace' := Namespace,
          'path' := Path
        }) ->
    #{ 'name' => Name,
       'namespace' => Namespace,
       'path' => Path
     }.
