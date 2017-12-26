-module(kuberl_v1_service_spec).

-export([encode/1]).

-export_type([kuberl_v1_service_spec/0]).

-type kuberl_v1_service_spec() ::
    #{ 'clusterIP' => binary(),
       'externalIPs' => list(),
       'externalName' => binary(),
       'externalTrafficPolicy' => binary(),
       'healthCheckNodePort' => integer(),
       'loadBalancerIP' => binary(),
       'loadBalancerSourceRanges' => list(),
       'ports' => list(),
       'publishNotReadyAddresses' => boolean(),
       'selector' => maps:map(),
       'sessionAffinity' => binary(),
       'sessionAffinityConfig' => kuberl_v1_session_affinity_config:kuberl_v1_session_affinity_config(),
       'type' => binary()
     }.

encode(#{ 'clusterIP' := ClusterIP,
          'externalIPs' := ExternalIPs,
          'externalName' := ExternalName,
          'externalTrafficPolicy' := ExternalTrafficPolicy,
          'healthCheckNodePort' := HealthCheckNodePort,
          'loadBalancerIP' := LoadBalancerIP,
          'loadBalancerSourceRanges' := LoadBalancerSourceRanges,
          'ports' := Ports,
          'publishNotReadyAddresses' := PublishNotReadyAddresses,
          'selector' := Selector,
          'sessionAffinity' := SessionAffinity,
          'sessionAffinityConfig' := SessionAffinityConfig,
          'type' := Type
        }) ->
    #{ 'clusterIP' => ClusterIP,
       'externalIPs' => ExternalIPs,
       'externalName' => ExternalName,
       'externalTrafficPolicy' => ExternalTrafficPolicy,
       'healthCheckNodePort' => HealthCheckNodePort,
       'loadBalancerIP' => LoadBalancerIP,
       'loadBalancerSourceRanges' => LoadBalancerSourceRanges,
       'ports' => Ports,
       'publishNotReadyAddresses' => PublishNotReadyAddresses,
       'selector' => Selector,
       'sessionAffinity' => SessionAffinity,
       'sessionAffinityConfig' => SessionAffinityConfig,
       'type' => Type
     }.
