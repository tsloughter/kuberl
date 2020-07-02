-module(kuberl_v1_typed_local_object_reference).

-export([encode/1]).

-export_type([kuberl_v1_typed_local_object_reference/0]).

-type kuberl_v1_typed_local_object_reference() ::
    #{ 'apiGroup' => binary(),
       'kind' := binary(),
       'name' := binary()
     }.

encode(#{ 'apiGroup' := ApiGroup,
          'kind' := Kind,
          'name' := Name
        }) ->
    #{ 'apiGroup' => ApiGroup,
       'kind' => Kind,
       'name' => Name
     }.
