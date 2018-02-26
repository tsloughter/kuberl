-module(kuberl_v1_csi_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_csi_persistent_volume_source/0]).

-type kuberl_v1_csi_persistent_volume_source() ::
    #{ 'driver' := binary(),
       'readOnly' => boolean(),
       'volumeHandle' := binary()
     }.

encode(#{ 'driver' := Driver,
          'readOnly' := ReadOnly,
          'volumeHandle' := VolumeHandle
        }) ->
    #{ 'driver' => Driver,
       'readOnly' => ReadOnly,
       'volumeHandle' => VolumeHandle
     }.
