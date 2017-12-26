-module(kuberl_v1_photon_persistent_disk_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_photon_persistent_disk_volume_source/0]).

-type kuberl_v1_photon_persistent_disk_volume_source() ::
    #{ 'fsType' => binary(),
       'pdID' := binary()
     }.

encode(#{ 'fsType' := FsType,
          'pdID' := PdID
        }) ->
    #{ 'fsType' => FsType,
       'pdID' => PdID
     }.
