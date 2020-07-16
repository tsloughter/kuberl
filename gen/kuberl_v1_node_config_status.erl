-module(kuberl_v1_node_config_status).

-export([encode/1]).

-export_type([kuberl_v1_node_config_status/0]).

-type kuberl_v1_node_config_status() ::
    #{ 'active' => kuberl_v1_node_config_source:kuberl_v1_node_config_source(),
       'assigned' => kuberl_v1_node_config_source:kuberl_v1_node_config_source(),
       'error' => binary(),
       'lastKnownGood' => kuberl_v1_node_config_source:kuberl_v1_node_config_source()
     }.

encode(#{ 'active' := Active,
          'assigned' := Assigned,
          'error' := Error,
          'lastKnownGood' := LastKnownGood
        }) ->
    #{ 'active' => Active,
       'assigned' => Assigned,
       'error' => Error,
       'lastKnownGood' => LastKnownGood
     }.
