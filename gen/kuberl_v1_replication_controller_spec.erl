-module(kuberl_v1_replication_controller_spec).

-export([encode/1]).

-export_type([kuberl_v1_replication_controller_spec/0]).

-type kuberl_v1_replication_controller_spec() ::
    #{ 'minReadySeconds' => integer(),
       'replicas' => integer(),
       'selector' => maps:map(),
       'template' => kuberl_v1_pod_template_spec:kuberl_v1_pod_template_spec()
     }.

encode(#{ 'minReadySeconds' := MinReadySeconds,
          'replicas' := Replicas,
          'selector' := Selector,
          'template' := Template
        }) ->
    #{ 'minReadySeconds' => MinReadySeconds,
       'replicas' => Replicas,
       'selector' => Selector,
       'template' => Template
     }.
