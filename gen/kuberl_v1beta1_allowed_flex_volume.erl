-module(kuberl_v1beta1_allowed_flex_volume).

-export([encode/1]).

-export_type([kuberl_v1beta1_allowed_flex_volume/0]).

-type kuberl_v1beta1_allowed_flex_volume() ::
    #{ 'driver' := binary()
     }.

encode(#{ 'driver' := Driver
        }) ->
    #{ 'driver' => Driver
     }.
