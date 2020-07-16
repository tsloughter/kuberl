-module(kuberl_networking_v1beta1_ingress_rule).

-export([encode/1]).

-export_type([kuberl_networking_v1beta1_ingress_rule/0]).

-type kuberl_networking_v1beta1_ingress_rule() ::
    #{ 'host' => binary(),
       'http' => kuberl_networking_v1beta1_http_ingress_rule_value:kuberl_networking_v1beta1_http_ingress_rule_value()
     }.

encode(#{ 'host' := Host,
          'http' := Http
        }) ->
    #{ 'host' => Host,
       'http' => Http
     }.
