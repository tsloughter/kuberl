-module(kuberl_v1beta2_replica_set_spec).

-export([encode/1]).

-export_type([kuberl_v1beta2_replica_set_spec/0]).

-type kuberl_v1beta2_replica_set_spec() ::
    #{ 'minReadySeconds' => integer(),
       'replicas' => integer(),
       'selector' := kuberl_v1_label_selector:kuberl_v1_label_selector(),
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
