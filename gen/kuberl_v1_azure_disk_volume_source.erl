-module(kuberl_v1_azure_disk_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_azure_disk_volume_source/0]).

-type kuberl_v1_azure_disk_volume_source() ::
    #{ 'cachingMode' => binary(),
       'diskName' := binary(),
       'diskURI' := binary(),
       'fsType' => binary(),
       'kind' => binary(),
       'readOnly' => boolean()
     }.

encode(#{ 'cachingMode' := CachingMode,
          'diskName' := DiskName,
          'diskURI' := DiskURI,
          'fsType' := FsType,
          'kind' := Kind,
          'readOnly' := ReadOnly
        }) ->
    #{ 'cachingMode' => CachingMode,
       'diskName' => DiskName,
       'diskURI' => DiskURI,
       'fsType' => FsType,
       'kind' => Kind,
       'readOnly' => ReadOnly
     }.
