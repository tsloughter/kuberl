-module(kuberl_v1_service_port).

-export([encode/1]).

-export_type([kuberl_v1_service_port/0]).

-type kuberl_v1_service_port() ::
    #{ 'name' => binary(),
       'nodePort' => integer(),
       'port' := integer(),
       'protocol' => binary(),
       'targetPort' => maps:map()
     }.

encode(#{ 'name' := Name,
          'nodePort' := NodePort,
          'port' := Port,
          'protocol' := Protocol,
          'targetPort' := TargetPort
        }) ->
    #{ 'name' => Name,
       'nodePort' => NodePort,
       'port' => Port,
       'protocol' => Protocol,
       'targetPort' => TargetPort
     }.
