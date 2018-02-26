-module(kuberl_v1_rbd_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_rbd_persistent_volume_source/0]).

-type kuberl_v1_rbd_persistent_volume_source() ::
    #{ 'fsType' => binary(),
       'image' := binary(),
       'keyring' => binary(),
       'monitors' := list(),
       'pool' => binary(),
       'readOnly' => boolean(),
       'secretRef' => kuberl_v1_secret_reference:kuberl_v1_secret_reference(),
       'user' => binary()
     }.

encode(#{ 'fsType' := FsType,
          'image' := Image,
          'keyring' := Keyring,
          'monitors' := Monitors,
          'pool' := Pool,
          'readOnly' := ReadOnly,
          'secretRef' := SecretRef,
          'user' := User
        }) ->
    #{ 'fsType' => FsType,
       'image' => Image,
       'keyring' => Keyring,
       'monitors' => Monitors,
       'pool' => Pool,
       'readOnly' => ReadOnly,
       'secretRef' => SecretRef,
       'user' => User
     }.
