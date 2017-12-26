-module(kuberl_v1_cinder_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_cinder_volume_source/0]).

-type kuberl_v1_cinder_volume_source() ::
    #{ 'fsType' => binary(),
       'readOnly' => boolean(),
       'volumeID' := binary()
     }.

encode(#{ 'fsType' := FsType,
          'readOnly' := ReadOnly,
          'volumeID' := VolumeID
        }) ->
    #{ 'fsType' => FsType,
       'readOnly' => ReadOnly,
       'volumeID' => VolumeID
     }.
