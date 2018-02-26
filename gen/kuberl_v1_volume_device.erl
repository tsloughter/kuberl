-module(kuberl_v1_volume_device).

-export([encode/1]).

-export_type([kuberl_v1_volume_device/0]).

-type kuberl_v1_volume_device() ::
    #{ 'devicePath' := binary(),
       'name' := binary()
     }.

encode(#{ 'devicePath' := DevicePath,
          'name' := Name
        }) ->
    #{ 'devicePath' => DevicePath,
       'name' => Name
     }.
