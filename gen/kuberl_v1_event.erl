-module(kuberl_v1_event).

-export([encode/1]).

-export_type([kuberl_v1_event/0]).

-type kuberl_v1_event() ::
    #{ 'action' => binary(),
       'apiVersion' => binary(),
       'count' => integer(),
       'eventTime' => kuberl_date_time:kuberl_date_time(),
       'firstTimestamp' => kuberl_date_time:kuberl_date_time(),
       'involvedObject' := kuberl_v1_object_reference:kuberl_v1_object_reference(),
       'kind' => binary(),
       'lastTimestamp' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'metadata' := kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'reason' => binary(),
       'related' => kuberl_v1_object_reference:kuberl_v1_object_reference(),
       'reportingComponent' => binary(),
       'reportingInstance' => binary(),
       'series' => kuberl_v1_event_series:kuberl_v1_event_series(),
       'source' => kuberl_v1_event_source:kuberl_v1_event_source(),
       'type' => binary()
     }.

encode(#{ 'action' := Action,
          'apiVersion' := ApiVersion,
          'count' := Count,
          'eventTime' := EventTime,
          'firstTimestamp' := FirstTimestamp,
          'involvedObject' := InvolvedObject,
          'kind' := Kind,
          'lastTimestamp' := LastTimestamp,
          'message' := Message,
          'metadata' := Metadata,
          'reason' := Reason,
          'related' := Related,
          'reportingComponent' := ReportingComponent,
          'reportingInstance' := ReportingInstance,
          'series' := Series,
          'source' := Source,
          'type' := Type
        }) ->
    #{ 'action' => Action,
       'apiVersion' => ApiVersion,
       'count' => Count,
       'eventTime' => EventTime,
       'firstTimestamp' => FirstTimestamp,
       'involvedObject' => InvolvedObject,
       'kind' => Kind,
       'lastTimestamp' => LastTimestamp,
       'message' => Message,
       'metadata' => Metadata,
       'reason' => Reason,
       'related' => Related,
       'reportingComponent' => ReportingComponent,
       'reportingInstance' => ReportingInstance,
       'series' => Series,
       'source' => Source,
       'type' => Type
     }.
