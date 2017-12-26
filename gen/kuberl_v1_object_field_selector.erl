-module(kuberl_v1_object_field_selector).

-export([encode/1]).

-export_type([kuberl_v1_object_field_selector/0]).

-type kuberl_v1_object_field_selector() ::
    #{ 'apiVersion' => binary(),
       'fieldPath' := binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'fieldPath' := FieldPath
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'fieldPath' => FieldPath
     }.
