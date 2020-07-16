-module(kuberl_v1_managed_fields_entry).

-export([encode/1]).

-export_type([kuberl_v1_managed_fields_entry/0]).

-type kuberl_v1_managed_fields_entry() ::
    #{ 'apiVersion' => binary(),
       'fieldsType' => binary(),
       'fieldsV1' => maps:map(),
       'manager' => binary(),
       'operation' => binary(),
       'time' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'fieldsType' := FieldsType,
          'fieldsV1' := FieldsV1,
          'manager' := Manager,
          'operation' := Operation,
          'time' := Time
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'fieldsType' => FieldsType,
       'fieldsV1' => FieldsV1,
       'manager' => Manager,
       'operation' => Operation,
       'time' => Time
     }.
