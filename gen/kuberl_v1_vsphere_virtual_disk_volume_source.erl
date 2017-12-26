-module(kuberl_v1_vsphere_virtual_disk_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_vsphere_virtual_disk_volume_source/0]).

-type kuberl_v1_vsphere_virtual_disk_volume_source() ::
    #{ 'fsType' => binary(),
       'storagePolicyID' => binary(),
       'storagePolicyName' => binary(),
       'volumePath' := binary()
     }.

encode(#{ 'fsType' := FsType,
          'storagePolicyID' := StoragePolicyID,
          'storagePolicyName' := StoragePolicyName,
          'volumePath' := VolumePath
        }) ->
    #{ 'fsType' => FsType,
       'storagePolicyID' => StoragePolicyID,
       'storagePolicyName' => StoragePolicyName,
       'volumePath' => VolumePath
     }.
