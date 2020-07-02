-module(kuberl_v2beta2_metric_spec).

-export([encode/1]).

-export_type([kuberl_v2beta2_metric_spec/0]).

-type kuberl_v2beta2_metric_spec() ::
    #{ 'external' => kuberl_v2beta2_external_metric_source:kuberl_v2beta2_external_metric_source(),
       'object' => kuberl_v2beta2_object_metric_source:kuberl_v2beta2_object_metric_source(),
       'pods' => kuberl_v2beta2_pods_metric_source:kuberl_v2beta2_pods_metric_source(),
       'resource' => kuberl_v2beta2_resource_metric_source:kuberl_v2beta2_resource_metric_source(),
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
