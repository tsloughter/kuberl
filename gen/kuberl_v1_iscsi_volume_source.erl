-module(kuberl_v1_iscsi_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_iscsi_volume_source/0]).

-type kuberl_v1_iscsi_volume_source() ::
    #{ 'chapAuthDiscovery' => boolean(),
       'chapAuthSession' => boolean(),
       'fsType' => binary(),
       'initiatorName' => binary(),
       'iqn' := binary(),
       'iscsiInterface' => binary(),
       'lun' := integer(),
       'portals' => list(),
       'readOnly' => boolean(),
       'secretRef' => kuberl_v1_local_object_reference:kuberl_v1_local_object_reference(),
       'targetPortal' := binary()
     }.

encode(#{ 'chapAuthDiscovery' := ChapAuthDiscovery,
          'chapAuthSession' := ChapAuthSession,
          'fsType' := FsType,
          'initiatorName' := InitiatorName,
          'iqn' := Iqn,
          'iscsiInterface' := IscsiInterface,
          'lun' := Lun,
          'portals' := Portals,
          'readOnly' := ReadOnly,
          'secretRef' := SecretRef,
          'targetPortal' := TargetPortal
        }) ->
    #{ 'chapAuthDiscovery' => ChapAuthDiscovery,
       'chapAuthSession' => ChapAuthSession,
       'fsType' => FsType,
       'initiatorName' => InitiatorName,
       'iqn' => Iqn,
       'iscsiInterface' => IscsiInterface,
       'lun' => Lun,
       'portals' => Portals,
       'readOnly' => ReadOnly,
       'secretRef' => SecretRef,
       'targetPortal' => TargetPortal
     }.
