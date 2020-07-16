-module(kuberl_v1_config_map).

-export([encode/1]).

-export_type([kuberl_v1_config_map/0]).

-type kuberl_v1_config_map() ::
    #{ 'apiVersion' => binary(),
       'binaryData' => maps:map(),
       'data' => maps:map(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'binaryData' := BinaryData,
          'data' := Data,
          'kind' := Kind,
          'metadata' := Metadata
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'binaryData' => BinaryData,
       'data' => Data,
       'kind' => Kind,
       'metadata' => Metadata
     }.
