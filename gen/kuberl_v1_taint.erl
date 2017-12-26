-module(kuberl_v1_taint).

-export([encode/1]).

-export_type([kuberl_v1_taint/0]).

-type kuberl_v1_taint() ::
    #{ 'effect' := binary(),
       'key' := binary(),
       'timeAdded' => kuberl_date_time:kuberl_date_time(),
       'value' => binary()
     }.

encode(#{ 'effect' := Effect,
          'key' := Key,
          'timeAdded' := TimeAdded,
          'value' := Value
        }) ->
    #{ 'effect' => Effect,
       'key' => Key,
       'timeAdded' => TimeAdded,
       'value' => Value
     }.
