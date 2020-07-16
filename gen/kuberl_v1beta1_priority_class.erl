-module(kuberl_v1beta1_priority_class).

-export([encode/1]).

-export_type([kuberl_v1beta1_priority_class/0]).

-type kuberl_v1beta1_priority_class() ::
    #{ 'apiVersion' => binary(),
       'description' => binary(),
       'globalDefault' => boolean(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'preemptionPolicy' => binary(),
       'value' := integer()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'description' := Description,
          'globalDefault' := GlobalDefault,
          'kind' := Kind,
          'metadata' := Metadata,
          'preemptionPolicy' := PreemptionPolicy,
          'value' := Value
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'description' => Description,
       'globalDefault' => GlobalDefault,
       'kind' => Kind,
       'metadata' => Metadata,
       'preemptionPolicy' => PreemptionPolicy,
       'value' => Value
     }.
