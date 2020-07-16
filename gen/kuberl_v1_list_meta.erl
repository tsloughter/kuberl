-module(kuberl_v1_list_meta).

-export([encode/1]).

-export_type([kuberl_v1_list_meta/0]).

-type kuberl_v1_list_meta() ::
    #{ 'continue' => binary(),
       'remainingItemCount' => integer(),
       'resourceVersion' => binary(),
       'selfLink' => binary()
     }.

encode(#{ 'continue' := Continue,
          'remainingItemCount' := RemainingItemCount,
          'resourceVersion' := ResourceVersion,
          'selfLink' := SelfLink
        }) ->
    #{ 'continue' => Continue,
       'remainingItemCount' => RemainingItemCount,
       'resourceVersion' => ResourceVersion,
       'selfLink' => SelfLink
     }.
