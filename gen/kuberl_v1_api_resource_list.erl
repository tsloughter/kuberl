-module(kuberl_v1_api_resource_list).

-export([encode/1]).

-export_type([kuberl_v1_api_resource_list/0]).

-type kuberl_v1_api_resource_list() ::
    #{ 'apiVersion' => binary(),
       'groupVersion' := binary(),
       'kind' => binary(),
       'resources' := list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'groupVersion' := GroupVersion,
          'kind' := Kind,
          'resources' := Resources
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'groupVersion' => GroupVersion,
       'kind' => Kind,
       'resources' => Resources
     }.
