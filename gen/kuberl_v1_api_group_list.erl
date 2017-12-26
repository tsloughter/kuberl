-module(kuberl_v1_api_group_list).

-export([encode/1]).

-export_type([kuberl_v1_api_group_list/0]).

-type kuberl_v1_api_group_list() ::
    #{ 'apiVersion' => binary(),
       'groups' := list(),
       'kind' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'groups' := Groups,
          'kind' := Kind
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'groups' => Groups,
       'kind' => Kind
     }.
