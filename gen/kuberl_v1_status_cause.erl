-module(kuberl_v1_status_cause).

-export([encode/1]).

-export_type([kuberl_v1_status_cause/0]).

-type kuberl_v1_status_cause() ::
    #{ 'field' => binary(),
       'message' => binary(),
       'reason' => binary()
     }.

encode(#{ 'field' := Field,
          'message' := Message,
          'reason' := Reason
        }) ->
    #{ 'field' => Field,
       'message' => Message,
       'reason' => Reason
     }.
