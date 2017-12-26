-module(kuberl_v1alpha1_subject).

-export([encode/1]).

-export_type([kuberl_v1alpha1_subject/0]).

-type kuberl_v1alpha1_subject() ::
    #{ 'apiVersion' => binary(),
       'kind' := binary(),
       'name' := binary(),
       'namespace' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'name' := Name,
          'namespace' := Namespace
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'name' => Name,
       'namespace' => Namespace
     }.
