-module(kuberl_v1_watch_event).

-export([encode/1]).

-export_type([kuberl_v1_watch_event/0]).

-type kuberl_v1_watch_event() ::
    #{ 'object' := kuberl_runtime_raw_extension:kuberl_runtime_raw_extension(),
       'type' := binary()
     }.

encode(#{ 'object' := Object,
          'type' := Type
        }) ->
    #{ 'object' => Object,
       'type' => Type
     }.
