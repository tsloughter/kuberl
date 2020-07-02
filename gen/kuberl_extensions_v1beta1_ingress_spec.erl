-module(kuberl_extensions_v1beta1_ingress_spec).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_ingress_spec/0]).

-type kuberl_extensions_v1beta1_ingress_spec() ::
    #{ 'backend' => kuberl_extensions_v1beta1_ingress_backend:kuberl_extensions_v1beta1_ingress_backend(),
       'rules' => list(),
       'tls' => list()
     }.

encode(#{ 'backend' := Backend,
          'rules' := Rules,
          'tls' := Tls
        }) ->
    #{ 'backend' => Backend,
       'rules' => Rules,
       'tls' => Tls
     }.
