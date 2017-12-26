-module(kuberl_v1_host_path_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_host_path_volume_source/0]).

-type kuberl_v1_host_path_volume_source() ::
    #{ 'path' := binary(),
       'type' => binary()
     }.

encode(#{ 'path' := Path,
          'type' := Type
        }) ->
    #{ 'path' => Path,
       'type' => Type
     }.
