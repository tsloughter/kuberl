-module(kuberl_v1_secret_key_selector).

-export([encode/1]).

-export_type([kuberl_v1_secret_key_selector/0]).

-type kuberl_v1_secret_key_selector() ::
    #{ 'key' := binary(),
       'name' => binary(),
       'optional' => boolean()
     }.

encode(#{ 'key' := Key,
          'name' := Name,
          'optional' := Optional
        }) ->
    #{ 'key' => Key,
       'name' => Name,
       'optional' => Optional
     }.
