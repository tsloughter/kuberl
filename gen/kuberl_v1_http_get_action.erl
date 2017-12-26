-module(kuberl_v1_http_get_action).

-export([encode/1]).

-export_type([kuberl_v1_http_get_action/0]).

-type kuberl_v1_http_get_action() ::
    #{ 'host' => binary(),
       'httpHeaders' => list(),
       'path' => binary(),
       'port' := maps:map(),
       'scheme' => binary()
     }.

encode(#{ 'host' := Host,
          'httpHeaders' := HttpHeaders,
          'path' := Path,
          'port' := Port,
          'scheme' := Scheme
        }) ->
    #{ 'host' => Host,
       'httpHeaders' => HttpHeaders,
       'path' => Path,
       'port' => Port,
       'scheme' => Scheme
     }.
