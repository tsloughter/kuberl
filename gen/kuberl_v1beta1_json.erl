-module(kuberl_v1beta1_json).

-export([encode/1]).

-export_type([kuberl_v1beta1_json/0]).

-type kuberl_v1beta1_json() ::
    #{ 'Raw' := kuberl_byte_array:kuberl_byte_array()
     }.

encode(#{ 'Raw' := Raw
        }) ->
    #{ 'Raw' => Raw
     }.
