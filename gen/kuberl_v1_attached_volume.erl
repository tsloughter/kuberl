-module(kuberl_v1_attached_volume).

-export([encode/1]).

-export_type([kuberl_v1_attached_volume/0]).

-type kuberl_v1_attached_volume() ::
    #{ 'devicePath' := binary(),
       'name' := binary()
     }.

encode(#{ 'devicePath' := DevicePath,
          'name' := Name
        }) ->
    #{ 'devicePath' => DevicePath,
       'name' => Name
     }.
