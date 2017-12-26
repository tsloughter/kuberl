-module(kuberl_v1_empty_dir_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_empty_dir_volume_source/0]).

-type kuberl_v1_empty_dir_volume_source() ::
    #{ 'medium' => binary(),
       'sizeLimit' => binary()
     }.

encode(#{ 'medium' := Medium,
          'sizeLimit' := SizeLimit
        }) ->
    #{ 'medium' => Medium,
       'sizeLimit' => SizeLimit
     }.
