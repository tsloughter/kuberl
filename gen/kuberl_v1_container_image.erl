-module(kuberl_v1_container_image).

-export([encode/1]).

-export_type([kuberl_v1_container_image/0]).

-type kuberl_v1_container_image() ::
    #{ 'names' := list(),
       'sizeBytes' => integer()
     }.

encode(#{ 'names' := Names,
          'sizeBytes' := SizeBytes
        }) ->
    #{ 'names' => Names,
       'sizeBytes' => SizeBytes
     }.
