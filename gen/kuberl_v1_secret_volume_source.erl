-module(kuberl_v1_secret_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_secret_volume_source/0]).

-type kuberl_v1_secret_volume_source() ::
    #{ 'defaultMode' => integer(),
       'items' => list(),
       'optional' => boolean(),
       'secretName' => binary()
     }.

encode(#{ 'defaultMode' := DefaultMode,
          'items' := Items,
          'optional' := Optional,
          'secretName' := SecretName
        }) ->
    #{ 'defaultMode' => DefaultMode,
       'items' => Items,
       'optional' => Optional,
       'secretName' => SecretName
     }.
