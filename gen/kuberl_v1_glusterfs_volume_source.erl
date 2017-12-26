-module(kuberl_v1_glusterfs_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_glusterfs_volume_source/0]).

-type kuberl_v1_glusterfs_volume_source() ::
    #{ 'endpoints' := binary(),
       'path' := binary(),
       'readOnly' => boolean()
     }.

encode(#{ 'endpoints' := Endpoints,
          'path' := Path,
          'readOnly' := ReadOnly
        }) ->
    #{ 'endpoints' => Endpoints,
       'path' => Path,
       'readOnly' => ReadOnly
     }.
