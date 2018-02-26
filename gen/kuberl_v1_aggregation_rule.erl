-module(kuberl_v1_aggregation_rule).

-export([encode/1]).

-export_type([kuberl_v1_aggregation_rule/0]).

-type kuberl_v1_aggregation_rule() ::
    #{ 'clusterRoleSelectors' => list()
     }.

encode(#{ 'clusterRoleSelectors' := ClusterRoleSelectors
        }) ->
    #{ 'clusterRoleSelectors' => ClusterRoleSelectors
     }.
