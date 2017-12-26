-module(kuberl_v1alpha1_pod_preset_spec).

-export([encode/1]).

-export_type([kuberl_v1alpha1_pod_preset_spec/0]).

-type kuberl_v1alpha1_pod_preset_spec() ::
    #{ 'env' => list(),
       'envFrom' => list(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'volumeMounts' => list(),
       'volumes' => list()
     }.

encode(#{ 'env' := Env,
          'envFrom' := EnvFrom,
          'selector' := Selector,
          'volumeMounts' := VolumeMounts,
          'volumes' := Volumes
        }) ->
    #{ 'env' => Env,
       'envFrom' => EnvFrom,
       'selector' => Selector,
       'volumeMounts' => VolumeMounts,
       'volumes' => Volumes
     }.
