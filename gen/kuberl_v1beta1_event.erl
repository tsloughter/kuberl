-module(kuberl_v1beta1_event).

-export([encode/1]).

-export_type([kuberl_v1beta1_event/0]).

-type kuberl_v1beta1_event() ::
    #{ 'action' => binary(),
       'apiVersion' => binary(),
       'deprecatedCount' => integer(),
       'deprecatedFirstTimestamp' => kuberl_date_time:kuberl_date_time(),
       'deprecatedLastTimestamp' => kuberl_date_time:kuberl_date_time(),
       'deprecatedSource' => kuberl_v1_event_source:kuberl_v1_event_source(),
       'eventTime' := kuberl_date_time:kuberl_date_time(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'note' => binary(),
       'reason' => binary(),
       'regarding' => kuberl_v1_object_reference:kuberl_v1_object_reference(),
       'related' => kuberl_v1_object_reference:kuberl_v1_object_reference(),
       'reportingController' => binary(),
       'reportingInstance' => binary(),
       'series' => kuberl_v1beta1_event_series:kuberl_v1beta1_event_series(),
       'type' => binary()
     }.

encode(#{ 'action' := Action,
          'apiVersion' := ApiVersion,
          'deprecatedCount' := DeprecatedCount,
          'deprecatedFirstTimestamp' := DeprecatedFirstTimestamp,
          'deprecatedLastTimestamp' := DeprecatedLastTimestamp,
          'deprecatedSource' := DeprecatedSource,
          'eventTime' := EventTime,
          'kind' := Kind,
          'metadata' := Metadata,
          'note' := Note,
          'reason' := Reason,
          'regarding' := Regarding,
          'related' := Related,
          'reportingController' := ReportingController,
          'reportingInstance' := ReportingInstance,
          'series' := Series,
          'type' := Type
        }) ->
    #{ 'action' => Action,
       'apiVersion' => ApiVersion,
       'deprecatedCount' => DeprecatedCount,
       'deprecatedFirstTimestamp' => DeprecatedFirstTimestamp,
       'deprecatedLastTimestamp' => DeprecatedLastTimestamp,
       'deprecatedSource' => DeprecatedSource,
       'eventTime' => EventTime,
       'kind' => Kind,
       'metadata' => Metadata,
       'note' => Note,
       'reason' => Reason,
       'regarding' => Regarding,
       'related' => Related,
       'reportingController' => ReportingController,
       'reportingInstance' => ReportingInstance,
       'series' => Series,
       'type' => Type
     }.
