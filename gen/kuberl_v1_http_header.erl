-module(kuberl_v1_http_header).

-export([encode/1]).

-export_type([kuberl_v1_http_header/0]).

-type kuberl_v1_http_header() ::
    #{ 'name' := binary(),
       'value' := binary()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
