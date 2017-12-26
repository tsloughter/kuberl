-module(kuberl_v1_container_port).

-export([encode/1]).

-export_type([kuberl_v1_container_port/0]).

-type kuberl_v1_container_port() ::
    #{ 'containerPort' := integer(),
       'hostIP' => binary(),
       'hostPort' => integer(),
       'name' => binary(),
       'protocol' => binary()
     }.

encode(#{ 'containerPort' := ContainerPort,
          'hostIP' := HostIP,
          'hostPort' := HostPort,
          'name' := Name,
          'protocol' := Protocol
        }) ->
    #{ 'containerPort' => ContainerPort,
       'hostIP' => HostIP,
       'hostPort' => HostPort,
       'name' => Name,
       'protocol' => Protocol
     }.
