-module(kuberl_v1beta1_volume_error).

-export([encode/1]).

-export_type([kuberl_v1beta1_volume_error/0]).

-type kuberl_v1beta1_volume_error() ::
    #{ 'message' => binary(),
       'time' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'message' := Message,
          'time' := Time
        }) ->
    #{ 'message' => Message,
       'time' => Time
     }.
