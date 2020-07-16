-module(kuberl_v1_csi_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_csi_volume_source/0]).

-type kuberl_v1_csi_volume_source() ::
    #{ 'driver' := binary(),
       'fsType' => binary(),
       'nodePublishSecretRef' => kuberl_v1_local_object_reference:kuberl_v1_local_object_reference(),
       'readOnly' => boolean(),
       'volumeAttributes' => maps:map()
     }.

encode(#{ 'driver' := Driver,
          'fsType' := FsType,
          'nodePublishSecretRef' := NodePublishSecretRef,
          'readOnly' := ReadOnly,
          'volumeAttributes' := VolumeAttributes
        }) ->
    #{ 'driver' => Driver,
       'fsType' => FsType,
       'nodePublishSecretRef' => NodePublishSecretRef,
       'readOnly' => ReadOnly,
       'volumeAttributes' => VolumeAttributes
     }.
