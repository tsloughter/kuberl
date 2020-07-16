-module(kuberl_v1alpha1_endpoint_port).

-export([encode/1]).

-export_type([kuberl_v1alpha1_endpoint_port/0]).

-type kuberl_v1alpha1_endpoint_port() ::
    #{ 'name' => binary(),
       'port' => integer(),
       'protocol' => binary()
     }.

encode(#{ 'name' := Name,
          'port' := Port,
          'protocol' := Protocol
        }) ->
    #{ 'name' => Name,
       'port' => Port,
       'protocol' => Protocol
     }.
