-module(kuberl_v1_nfs_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_nfs_volume_source/0]).

-type kuberl_v1_nfs_volume_source() ::
    #{ 'path' := binary(),
       'readOnly' => boolean(),
       'server' := binary()
     }.

encode(#{ 'path' := Path,
          'readOnly' := ReadOnly,
          'server' := Server
        }) ->
    #{ 'path' => Path,
       'readOnly' => ReadOnly,
       'server' => Server
     }.
