-module(kuberl_v1beta1_stateful_set_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_stateful_set_spec/0]).

-type kuberl_v1beta1_stateful_set_spec() ::
    #{ 'podManagementPolicy' => binary(),
       'replicas' => integer(),
       'revisionHistoryLimit' => integer(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'serviceName' := binary(),
       'template' := kuberl_v1_pod_template_spec:kuberl_v1_pod_template_spec(),
       'updateStrategy' => kuberl_v1beta1_stateful_set_update_strategy:kuberl_v1beta1_stateful_set_update_strategy(),
       'volumeClaimTemplates' => list()
     }.

encode(#{ 'podManagementPolicy' := PodManagementPolicy,
          'replicas' := Replicas,
          'revisionHistoryLimit' := RevisionHistoryLimit,
          'selector' := Selector,
          'serviceName' := ServiceName,
          'template' := Template,
          'updateStrategy' := UpdateStrategy,
          'volumeClaimTemplates' := VolumeClaimTemplates
        }) ->
    #{ 'podManagementPolicy' => PodManagementPolicy,
       'replicas' => Replicas,
       'revisionHistoryLimit' => RevisionHistoryLimit,
       'selector' => Selector,
       'serviceName' => ServiceName,
       'template' => Template,
       'updateStrategy' => UpdateStrategy,
       'volumeClaimTemplates' => VolumeClaimTemplates
     }.
