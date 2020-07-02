-module(kuberl_v1_endpoints).

-export([encode/1]).

-export_type([kuberl_v1_endpoints/0]).

-type kuberl_v1_endpoints() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'subsets' => list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'subsets' := Subsets
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'subsets' => Subsets
     }.
