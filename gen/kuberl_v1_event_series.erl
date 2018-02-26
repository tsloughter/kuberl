-module(kuberl_v1_event_series).

-export([encode/1]).

-export_type([kuberl_v1_event_series/0]).

-type kuberl_v1_event_series() ::
    #{ 'count' => integer(),
       'lastObservedTime' => kuberl_date_time:kuberl_date_time(),
       'state' => binary()
     }.

encode(#{ 'count' := Count,
          'lastObservedTime' := LastObservedTime,
          'state' := State
        }) ->
    #{ 'count' => Count,
       'lastObservedTime' => LastObservedTime,
       'state' => State
     }.
