-module(kuberl_apps_v1beta1_deployment_spec).

-export([encode/1]).

-export_type([kuberl_apps_v1beta1_deployment_spec/0]).

-type kuberl_apps_v1beta1_deployment_spec() ::
    #{ 'minReadySeconds' => integer(),
       'paused' => boolean(),
       'progressDeadlineSeconds' => integer(),
       'replicas' => integer(),
       'revisionHistoryLimit' => integer(),
       'rollbackTo' => kuberl_apps_v1beta1_rollback_config:kuberl_apps_v1beta1_rollback_config(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'strategy' => kuberl_apps_v1beta1_deployment_strategy:kuberl_apps_v1beta1_deployment_strategy(),
       'template' := kuberl_v1_pod_template_spec:kuberl_v1_pod_template_spec()
     }.

encode(#{ 'minReadySeconds' := MinReadySeconds,
          'paused' := Paused,
          'progressDeadlineSeconds' := ProgressDeadlineSeconds,
          'replicas' := Replicas,
          'revisionHistoryLimit' := RevisionHistoryLimit,
          'rollbackTo' := RollbackTo,
          'selector' := Selector,
          'strategy' := Strategy,
          'template' := Template
        }) ->
    #{ 'minReadySeconds' => MinReadySeconds,
       'paused' => Paused,
       'progressDeadlineSeconds' => ProgressDeadlineSeconds,
       'replicas' => Replicas,
       'revisionHistoryLimit' => RevisionHistoryLimit,
       'rollbackTo' => RollbackTo,
       'selector' => Selector,
       'strategy' => Strategy,
       'template' => Template
     }.
