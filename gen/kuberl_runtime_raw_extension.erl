-module(kuberl_runtime_raw_extension).

-export([encode/1]).

-export_type([kuberl_runtime_raw_extension/0]).

-type kuberl_runtime_raw_extension() ::
    #{ 'Raw' := kuberl_byte_array:kuberl_byte_array()
     }.

encode(#{ 'Raw' := Raw
        }) ->
    #{ 'Raw' => Raw
     }.
