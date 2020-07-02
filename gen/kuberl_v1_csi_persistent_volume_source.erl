-module(kuberl_v1_csi_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_csi_persistent_volume_source/0]).

-type kuberl_v1_csi_persistent_volume_source() ::
    #{ 'controllerExpandSecretRef' => kuberl_v1_secret_reference:kuberl_v1_secret_reference(),
       'controllerPublishSecretRef' => kuberl_v1_secret_reference:kuberl_v1_secret_reference(),
       'driver' := binary(),
       'fsType' => binary(),
       'nodePublishSecretRef' => kuberl_v1_secret_reference:kuberl_v1_secret_reference(),
       'nodeStageSecretRef' => kuberl_v1_secret_reference:kuberl_v1_secret_reference(),
       'readOnly' => boolean(),
       'volumeAttributes' => maps:map(),
       'volumeHandle' := binary()
     }.

encode(#{ 'controllerExpandSecretRef' := ControllerExpandSecretRef,
          'controllerPublishSecretRef' := ControllerPublishSecretRef,
          'driver' := Driver,
          'fsType' := FsType,
          'nodePublishSecretRef' := NodePublishSecretRef,
          'nodeStageSecretRef' := NodeStageSecretRef,
          'readOnly' := ReadOnly,
          'volumeAttributes' := VolumeAttributes,
          'volumeHandle' := VolumeHandle
        }) ->
    #{ 'controllerExpandSecretRef' => ControllerExpandSecretRef,
       'controllerPublishSecretRef' => ControllerPublishSecretRef,
       'driver' => Driver,
       'fsType' => FsType,
       'nodePublishSecretRef' => NodePublishSecretRef,
       'nodeStageSecretRef' => NodeStageSecretRef,
       'readOnly' => ReadOnly,
       'volumeAttributes' => VolumeAttributes,
       'volumeHandle' => VolumeHandle
     }.
