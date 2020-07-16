-module(kuberl_v1_watch_event).

-export([encode/1]).

-export_type([kuberl_v1_watch_event/0]).

-type kuberl_v1_watch_event() ::
    #{ 'object' := maps:map(),
       'type' := binary()
     }.

encode(#{ 'object' := Object,
          'type' := Type
        }) ->
    #{ 'object' => Object,
       'type' => Type
     }.
