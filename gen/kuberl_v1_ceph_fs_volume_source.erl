-module(kuberl_v1_ceph_fs_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_ceph_fs_volume_source/0]).

-type kuberl_v1_ceph_fs_volume_source() ::
    #{ 'monitors' := list(),
       'path' => binary(),
       'readOnly' => boolean(),
       'secretFile' => binary(),
       'secretRef' => kuberl_v1_local_object_reference:kuberl_v1_local_object_reference(),
       'user' => binary()
     }.

encode(#{ 'monitors' := Monitors,
          'path' := Path,
          'readOnly' := ReadOnly,
          'secretFile' := SecretFile,
          'secretRef' := SecretRef,
          'user' := User
        }) ->
    #{ 'monitors' => Monitors,
       'path' => Path,
       'readOnly' => ReadOnly,
       'secretFile' => SecretFile,
       'secretRef' => SecretRef,
       'user' => User
     }.
