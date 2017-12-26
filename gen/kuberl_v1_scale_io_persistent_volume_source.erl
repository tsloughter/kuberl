-module(kuberl_v1_scale_io_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_scale_io_persistent_volume_source/0]).

-type kuberl_v1_scale_io_persistent_volume_source() ::
    #{ 'fsType' => binary(),
       'gateway' := binary(),
       'protectionDomain' => binary(),
       'readOnly' => boolean(),
       'secretRef' := kuberl_v1_secret_reference:kuberl_v1_secret_reference(),
       'sslEnabled' => boolean(),
       'storageMode' => binary(),
       'storagePool' => binary(),
       'system' := binary(),
       'volumeName' => binary()
     }.

encode(#{ 'fsType' := FsType,
          'gateway' := Gateway,
          'protectionDomain' := ProtectionDomain,
          'readOnly' := ReadOnly,
          'secretRef' := SecretRef,
          'sslEnabled' := SslEnabled,
          'storageMode' := StorageMode,
          'storagePool' := StoragePool,
          'system' := System,
          'volumeName' := VolumeName
        }) ->
    #{ 'fsType' => FsType,
       'gateway' => Gateway,
       'protectionDomain' => ProtectionDomain,
       'readOnly' => ReadOnly,
       'secretRef' => SecretRef,
       'sslEnabled' => SslEnabled,
       'storageMode' => StorageMode,
       'storagePool' => StoragePool,
       'system' => System,
       'volumeName' => VolumeName
     }.
