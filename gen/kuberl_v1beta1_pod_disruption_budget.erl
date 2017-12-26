-module(kuberl_v1beta1_pod_disruption_budget).

-export([encode/1]).

-export_type([kuberl_v1beta1_pod_disruption_budget/0]).

-type kuberl_v1beta1_pod_disruption_budget() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1beta1_pod_disruption_budget_spec:kuberl_v1beta1_pod_disruption_budget_spec(),
       'status' => kuberl_v1beta1_pod_disruption_budget_status:kuberl_v1beta1_pod_disruption_budget_status()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec,
          'status' := Status
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec,
       'status' => Status
     }.
