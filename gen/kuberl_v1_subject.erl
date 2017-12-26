-module(kuberl_v1_subject).

-export([encode/1]).

-export_type([kuberl_v1_subject/0]).

-type kuberl_v1_subject() ::
    #{ 'apiGroup' => binary(),
       'kind' := binary(),
       'name' := binary(),
       'namespace' => binary()
     }.

encode(#{ 'apiGroup' := ApiGroup,
          'kind' := Kind,
          'name' := Name,
          'namespace' := Namespace
        }) ->
    #{ 'apiGroup' => ApiGroup,
       'kind' => Kind,
       'name' => Name,
       'namespace' => Namespace
     }.
