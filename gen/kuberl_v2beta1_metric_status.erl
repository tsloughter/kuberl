-module(kuberl_v2beta1_metric_status).

-export([encode/1]).

-export_type([kuberl_v2beta1_metric_status/0]).

-type kuberl_v2beta1_metric_status() ::
    #{ 'external' => kuberl_v2beta1_external_metric_status:kuberl_v2beta1_external_metric_status(),
       'object' => kuberl_v2beta1_object_metric_status:kuberl_v2beta1_object_metric_status(),
       'pods' => kuberl_v2beta1_pods_metric_status:kuberl_v2beta1_pods_metric_status(),
       'resource' => kuberl_v2beta1_resource_metric_status:kuberl_v2beta1_resource_metric_status(),
       'type' := binary()
     }.

encode(#{ 'external' := External,
          'object' := Object,
          'pods' := Pods,
          'resource' := Resource,
          'type' := Type
        }) ->
    #{ 'external' => External,
       'object' => Object,
       'pods' => Pods,
       'resource' => Resource,
       'type' => Type
     }.
