-module(kuberl_v1_aws_elastic_block_store_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_aws_elastic_block_store_volume_source/0]).

-type kuberl_v1_aws_elastic_block_store_volume_source() ::
    #{ 'fsType' => binary(),
       'partition' => integer(),
       'readOnly' => boolean(),
       'volumeID' := binary()
     }.

encode(#{ 'fsType' := FsType,
          'partition' := Partition,
          'readOnly' := ReadOnly,
          'volumeID' := VolumeID
        }) ->
    #{ 'fsType' => FsType,
       'partition' => Partition,
       'readOnly' => ReadOnly,
       'volumeID' => VolumeID
     }.
