-module(kuberl_v1_component_status).

-export([encode/1]).

-export_type([kuberl_v1_component_status/0]).

-type kuberl_v1_component_status() ::
    #{ 'apiVersion' => binary(),
       'conditions' => list(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'conditions' := Conditions,
          'kind' := Kind,
          'metadata' := Metadata
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'conditions' => Conditions,
       'kind' => Kind,
       'metadata' => Metadata
     }.
