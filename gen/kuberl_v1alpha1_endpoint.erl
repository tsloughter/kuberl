-module(kuberl_v1alpha1_endpoint).

-export([encode/1]).

-export_type([kuberl_v1alpha1_endpoint/0]).

-type kuberl_v1alpha1_endpoint() ::
    #{ 'addresses' := list(),
       'conditions' => kuberl_v1alpha1_endpoint_conditions:kuberl_v1alpha1_endpoint_conditions(),
       'hostname' => binary(),
       'targetRef' => kuberl_v1_object_reference:kuberl_v1_object_reference(),
       'topology' => maps:map()
     }.

encode(#{ 'addresses' := Addresses,
          'conditions' := Conditions,
          'hostname' := Hostname,
          'targetRef' := TargetRef,
          'topology' := Topology
        }) ->
    #{ 'addresses' => Addresses,
       'conditions' => Conditions,
       'hostname' => Hostname,
       'targetRef' => TargetRef,
       'topology' => Topology
     }.
