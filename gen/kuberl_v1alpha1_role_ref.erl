-module(kuberl_v1alpha1_role_ref).

-export([encode/1]).

-export_type([kuberl_v1alpha1_role_ref/0]).

-type kuberl_v1alpha1_role_ref() ::
    #{ 'apiGroup' := binary(),
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
