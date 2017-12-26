-module(kuberl_v1_persistent_volume_claim_spec).

-export([encode/1]).

-export_type([kuberl_v1_persistent_volume_claim_spec/0]).

-type kuberl_v1_persistent_volume_claim_spec() ::
    #{ 'accessModes' => list(),
       'resources' => kuberl_v1_resource_requirements:kuberl_v1_resource_requirements(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'storageClassName' => binary(),
       'volumeName' => binary()
     }.

encode(#{ 'accessModes' := AccessModes,
          'resources' := Resources,
          'selector' := Selector,
          'storageClassName' := StorageClassName,
          'volumeName' := VolumeName
        }) ->
    #{ 'accessModes' => AccessModes,
       'resources' => Resources,
       'selector' => Selector,
       'storageClassName' => StorageClassName,
       'volumeName' => VolumeName
     }.
