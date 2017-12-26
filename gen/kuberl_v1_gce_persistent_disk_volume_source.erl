-module(kuberl_v1_gce_persistent_disk_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_gce_persistent_disk_volume_source/0]).

-type kuberl_v1_gce_persistent_disk_volume_source() ::
    #{ 'fsType' => binary(),
       'partition' => integer(),
       'pdName' := binary(),
       'readOnly' => boolean()
     }.

encode(#{ 'fsType' := FsType,
          'partition' := Partition,
          'pdName' := PdName,
          'readOnly' := ReadOnly
        }) ->
    #{ 'fsType' => FsType,
       'partition' => Partition,
       'pdName' => PdName,
       'readOnly' => ReadOnly
     }.
