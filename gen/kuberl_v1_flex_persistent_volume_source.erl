-module(kuberl_v1_flex_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_flex_persistent_volume_source/0]).

-type kuberl_v1_flex_persistent_volume_source() ::
    #{ 'driver' := binary(),
       'fsType' => binary(),
       'options' => maps:map(),
       'readOnly' => boolean(),
       'secretRef' => kuberl_v1_secret_reference:kuberl_v1_secret_reference()
     }.

encode(#{ 'driver' := Driver,
          'fsType' := FsType,
          'options' := Options,
          'readOnly' := ReadOnly,
          'secretRef' := SecretRef
        }) ->
    #{ 'driver' => Driver,
       'fsType' => FsType,
       'options' => Options,
       'readOnly' => ReadOnly,
       'secretRef' => SecretRef
     }.
