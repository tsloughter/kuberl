-module(kuberl_v2beta2_horizontal_pod_autoscaler).

-export([encode/1]).

-export_type([kuberl_v2beta2_horizontal_pod_autoscaler/0]).

-type kuberl_v2beta2_horizontal_pod_autoscaler() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v2beta2_horizontal_pod_autoscaler_spec:kuberl_v2beta2_horizontal_pod_autoscaler_spec(),
       'status' => kuberl_v2beta2_horizontal_pod_autoscaler_status:kuberl_v2beta2_horizontal_pod_autoscaler_status()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec,
          'status' := Status
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec,
       'status' => Status
     }.
