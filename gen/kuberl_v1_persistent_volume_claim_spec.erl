-module(kuberl_v1_persistent_volume_claim_spec).

-export([encode/1]).

-export_type([kuberl_v1_persistent_volume_claim_spec/0]).

-type kuberl_v1_persistent_volume_claim_spec() ::
    #{ 'accessModes' => list(),
       'dataSource' => kuberl_v1_typed_local_object_reference:kuberl_v1_typed_local_object_reference(),
       'resources' => kuberl_v1_resource_requirements:kuberl_v1_resource_requirements(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'storageClassName' => binary(),
       'volumeMode' => binary(),
       'volumeName' => binary()
     }.

encode(#{ 'accessModes' := AccessModes,
          'dataSource' := DataSource,
          'resources' := Resources,
          'selector' := Selector,
          'storageClassName' := StorageClassName,
          'volumeMode' := VolumeMode,
          'volumeName' := VolumeName
        }) ->
    #{ 'accessModes' => AccessModes,
       'dataSource' => DataSource,
       'resources' => Resources,
       'selector' => Selector,
       'storageClassName' => StorageClassName,
       'volumeMode' => VolumeMode,
       'volumeName' => VolumeName
     }.
