-module(kuberl_v1_limit_range).

-export([encode/1]).

-export_type([kuberl_v1_limit_range/0]).

-type kuberl_v1_limit_range() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_limit_range_spec:kuberl_v1_limit_range_spec()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec
     }.
