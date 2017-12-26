-module(kuberl_v1_fc_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_fc_volume_source/0]).

-type kuberl_v1_fc_volume_source() ::
    #{ 'fsType' => binary(),
       'lun' => integer(),
       'readOnly' => boolean(),
       'targetWWNs' => list(),
       'wwids' => list()
     }.

encode(#{ 'fsType' := FsType,
          'lun' := Lun,
          'readOnly' := ReadOnly,
          'targetWWNs' := TargetWWNs,
          'wwids' := Wwids
        }) ->
    #{ 'fsType' => FsType,
       'lun' => Lun,
       'readOnly' => ReadOnly,
       'targetWWNs' => TargetWWNs,
       'wwids' => Wwids
     }.
