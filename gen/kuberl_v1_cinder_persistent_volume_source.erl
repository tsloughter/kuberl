-module(kuberl_v1_cinder_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_cinder_persistent_volume_source/0]).

-type kuberl_v1_cinder_persistent_volume_source() ::
    #{ 'fsType' => binary(),
       'readOnly' => boolean(),
       'secretRef' => kuberl_v1_secret_reference:kuberl_v1_secret_reference(),
       'volumeID' := binary()
     }.

encode(#{ 'fsType' := FsType,
          'readOnly' := ReadOnly,
          'secretRef' := SecretRef,
          'volumeID' := VolumeID
        }) ->
    #{ 'fsType' => FsType,
       'readOnly' => ReadOnly,
       'secretRef' => SecretRef,
       'volumeID' => VolumeID
     }.
