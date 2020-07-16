-module(kuberl_extensions_v1beta1_http_ingress_rule_value).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_http_ingress_rule_value/0]).

-type kuberl_extensions_v1beta1_http_ingress_rule_value() ::
    #{ 'paths' := list()
     }.

encode(#{ 'paths' := Paths
        }) ->
    #{ 'paths' => Paths
     }.
