-module(kuberl_v1beta1_pod_disruption_budget_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_pod_disruption_budget_spec/0]).

-type kuberl_v1beta1_pod_disruption_budget_spec() ::
    #{ 'maxUnavailable' => maps:map(),
       'minAvailable' => maps:map(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector()
     }.

encode(#{ 'maxUnavailable' := MaxUnavailable,
          'minAvailable' := MinAvailable,
          'selector' := Selector
        }) ->
    #{ 'maxUnavailable' => MaxUnavailable,
       'minAvailable' => MinAvailable,
       'selector' => Selector
     }.
