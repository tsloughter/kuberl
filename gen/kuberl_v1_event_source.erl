-module(kuberl_v1_event_source).

-export([encode/1]).

-export_type([kuberl_v1_event_source/0]).

-type kuberl_v1_event_source() ::
    #{ 'component' => binary(),
       'host' => binary()
     }.

encode(#{ 'component' := Component,
          'host' := Host
        }) ->
    #{ 'component' => Component,
       'host' => Host
     }.
