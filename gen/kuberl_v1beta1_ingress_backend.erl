-module(kuberl_v1beta1_ingress_backend).

-export([encode/1]).

-export_type([kuberl_v1beta1_ingress_backend/0]).

-type kuberl_v1beta1_ingress_backend() ::
    #{ 'serviceName' := binary(),
       'servicePort' := maps:map()
     }.

encode(#{ 'serviceName' := ServiceName,
          'servicePort' := ServicePort
        }) ->
    #{ 'serviceName' => ServiceName,
       'servicePort' => ServicePort
     }.
