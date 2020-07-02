-module(kuberl_networking_v1beta1_http_ingress_path).

-export([encode/1]).

-export_type([kuberl_networking_v1beta1_http_ingress_path/0]).

-type kuberl_networking_v1beta1_http_ingress_path() ::
    #{ 'backend' := kuberl_networking_v1beta1_ingress_backend:kuberl_networking_v1beta1_ingress_backend(),
       'path' => binary()
     }.

encode(#{ 'backend' := Backend,
          'path' := Path
        }) ->
    #{ 'backend' => Backend,
       'path' => Path
     }.
