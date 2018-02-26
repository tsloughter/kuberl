-module(kuberl_v1_daemon_set_spec).

-export([encode/1]).

-export_type([kuberl_v1_daemon_set_spec/0]).

-type kuberl_v1_daemon_set_spec() ::
    #{ 'minReadySeconds' => integer(),
       'revisionHistoryLimit' => integer(),
       'selector' := kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'template' := kuberl_v1_pod_template_spec:kuberl_v1_pod_template_spec(),
       'updateStrategy' => kuberl_v1_daemon_set_update_strategy:kuberl_v1_daemon_set_update_strategy()
     }.

encode(#{ 'minReadySeconds' := MinReadySeconds,
          'revisionHistoryLimit' := RevisionHistoryLimit,
          'selector' := Selector,
          'template' := Template,
          'updateStrategy' := UpdateStrategy
        }) ->
    #{ 'minReadySeconds' => MinReadySeconds,
       'revisionHistoryLimit' => RevisionHistoryLimit,
       'selector' => Selector,
       'template' => Template,
       'updateStrategy' => UpdateStrategy
     }.
