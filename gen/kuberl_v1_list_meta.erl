-module(kuberl_v1_list_meta).

-export([encode/1]).

-export_type([kuberl_v1_list_meta/0]).

-type kuberl_v1_list_meta() ::
    #{ 'continue' => binary(),
       'resourceVersion' => binary(),
       'selfLink' => binary()
     }.

encode(#{ 'continue' := Continue,
          'resourceVersion' := ResourceVersion,
          'selfLink' := SelfLink
        }) ->
    #{ 'continue' => Continue,
       'resourceVersion' => ResourceVersion,
       'selfLink' => SelfLink
     }.
