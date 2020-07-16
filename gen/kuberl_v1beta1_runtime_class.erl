-module(kuberl_v1beta1_runtime_class).

-export([encode/1]).

-export_type([kuberl_v1beta1_runtime_class/0]).

-type kuberl_v1beta1_runtime_class() ::
    #{ 'apiVersion' => binary(),
       'handler' := binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'overhead' => kuberl_v1beta1_overhead:kuberl_v1beta1_overhead(),
       'scheduling' => kuberl_v1beta1_scheduling:kuberl_v1beta1_scheduling()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'handler' := Handler,
          'kind' := Kind,
          'metadata' := Metadata,
          'overhead' := Overhead,
          'scheduling' := Scheduling
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'handler' => Handler,
       'kind' => Kind,
       'metadata' => Metadata,
       'overhead' => Overhead,
       'scheduling' => Scheduling
     }.
