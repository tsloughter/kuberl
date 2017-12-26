-module(kuberl_v1_node_daemon_endpoints).

-export([encode/1]).

-export_type([kuberl_v1_node_daemon_endpoints/0]).

-type kuberl_v1_node_daemon_endpoints() ::
    #{ 'kubeletEndpoint' => kuberl_v1_daemon_endpoint:kuberl_v1_daemon_endpoint()
     }.

encode(#{ 'kubeletEndpoint' := KubeletEndpoint
        }) ->
    #{ 'kubeletEndpoint' => KubeletEndpoint
     }.
