-module(kuberl_v1_event).

-export([encode/1]).

-export_type([kuberl_v1_event/0]).

-type kuberl_v1_event() ::
    #{ 'apiVersion' => binary(),
       'count' => integer(),
       'firstTimestamp' => kuberl_date_time:kuberl_date_time(),
       'involvedObject' := kuberl_v1_object_reference:kuberl_v1_object_reference(),
       'kind' => binary(),
       'lastTimestamp' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'metadata' := kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'reason' => binary(),
       'source' => kuberl_v1_event_source:kuberl_v1_event_source(),
       'type' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'count' := Count,
          'firstTimestamp' := FirstTimestamp,
          'involvedObject' := InvolvedObject,
          'kind' := Kind,
          'lastTimestamp' := LastTimestamp,
          'message' := Message,
          'metadata' := Metadata,
          'reason' := Reason,
          'source' := Source,
          'type' := Type
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'count' => Count,
       'firstTimestamp' => FirstTimestamp,
       'involvedObject' => InvolvedObject,
       'kind' => Kind,
       'lastTimestamp' => LastTimestamp,
       'message' => Message,
       'metadata' => Metadata,
       'reason' => Reason,
       'source' => Source,
       'type' => Type
     }.
