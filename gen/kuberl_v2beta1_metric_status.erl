-module(kuberl_v2beta1_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_metric_status/0]).

-type kuberl_v2beta1_metric_status() ::
    #{ 'object' => kuberl_v2beta1_object_metric_status:kuberl_v2beta1_object_metric_status(),
       'pods' => kuberl_v2beta1_pods_metric_status:kuberl_v2beta1_pods_metric_status(),
       'resource' => kuberl_v2beta1_resource_metric_status:kuberl_v2beta1_resource_metric_status(),
       'type' := binary()
     }.

encode(#{ 'object' := Object,
          'pods' := Pods,
          'resource' := Resource,
          'type' := Type
        }) ->
    #{ 'object' => Object,
       'pods' => Pods,
       'resource' => Resource,
       'type' => Type
     }.
