-module(kuberl_v1_local_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_local_volume_source/0]).

-type kuberl_v1_local_volume_source() ::
    #{ 'fsType' => binary(),
       'path' := binary()
     }.

encode(#{ 'fsType' := FsType,
          'path' := Path
        }) ->
    #{ 'fsType' => FsType,
       'path' => Path
     }.
