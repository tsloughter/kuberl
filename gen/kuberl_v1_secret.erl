-module(kuberl_v1_secret).

-export([encode/1]).

-export_type([kuberl_v1_secret/0]).

-type kuberl_v1_secret() ::
    #{ 'apiVersion' => binary(),
       'data' => maps:map(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'stringData' => maps:map(),
       'type' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'data' := Data,
          'kind' := Kind,
          'metadata' := Metadata,
          'stringData' := StringData,
          'type' := Type
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'data' => Data,
       'kind' => Kind,
       'metadata' => Metadata,
       'stringData' => StringData,
       'type' => Type
     }.
