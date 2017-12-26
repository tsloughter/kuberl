-module(kuberl_v1_key_to_path).

-export([encode/1]).

-export_type([kuberl_v1_key_to_path/0]).

-type kuberl_v1_key_to_path() ::
    #{ 'key' := binary(),
       'mode' => integer(),
       'path' := binary()
     }.

encode(#{ 'key' := Key,
          'mode' := Mode,
          'path' := Path
        }) ->
    #{ 'key' => Key,
       'mode' => Mode,
       'path' => Path
     }.
