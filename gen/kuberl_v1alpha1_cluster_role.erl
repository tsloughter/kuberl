-module(kuberl_v1alpha1_cluster_role).

-export([encode/1]).

-export_type([kuberl_v1alpha1_cluster_role/0]).

-type kuberl_v1alpha1_cluster_role() ::
    #{ 'aggregationRule' => kuberl_v1alpha1_aggregation_rule:kuberl_v1alpha1_aggregation_rule(),
       'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'rules' := list()
     }.

encode(#{ 'aggregationRule' := AggregationRule,
          'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'rules' := Rules
        }) ->
    #{ 'aggregationRule' => AggregationRule,
       'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'rules' => Rules
     }.
