-module(kuberl_extensions_v1beta1_ingress).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_ingress/0]).

-type kuberl_extensions_v1beta1_ingress() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_extensions_v1beta1_ingress_spec:kuberl_extensions_v1beta1_ingress_spec(),
       'status' => kuberl_extensions_v1beta1_ingress_status:kuberl_extensions_v1beta1_ingress_status()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec,
          'status' := Status
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec,
       'status' => Status
     }.
