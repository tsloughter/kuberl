-module(kuberl_v1_node_spec).

-export([encode/1]).

-export_type([kuberl_v1_node_spec/0]).

-type kuberl_v1_node_spec() ::
    #{ 'configSource' => kuberl_v1_node_config_source:kuberl_v1_node_config_source(),
       'externalID' => binary(),
       'podCIDR' => binary(),
       'providerID' => binary(),
       'taints' => list(),
       'unschedulable' => boolean()
     }.

encode(#{ 'configSource' := ConfigSource,
          'externalID' := ExternalID,
          'podCIDR' := PodCIDR,
          'providerID' := ProviderID,
          'taints' := Taints,
          'unschedulable' := Unschedulable
        }) ->
    #{ 'configSource' => ConfigSource,
       'externalID' => ExternalID,
       'podCIDR' => PodCIDR,
       'providerID' => ProviderID,
       'taints' => Taints,
       'unschedulable' => Unschedulable
     }.
