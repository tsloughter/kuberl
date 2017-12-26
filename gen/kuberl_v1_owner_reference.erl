-module(kuberl_v1_owner_reference).

-export([encode/1]).

-export_type([kuberl_v1_owner_reference/0]).

-type kuberl_v1_owner_reference() ::
    #{ 'apiVersion' := binary(),
       'blockOwnerDeletion' => boolean(),
       'controller' => boolean(),
       'kind' := binary(),
       'name' := binary(),
       'uid' := binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'blockOwnerDeletion' := BlockOwnerDeletion,
          'controller' := Controller,
          'kind' := Kind,
          'name' := Name,
          'uid' := Uid
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'blockOwnerDeletion' => BlockOwnerDeletion,
       'controller' => Controller,
       'kind' => Kind,
       'name' => Name,
       'uid' => Uid
     }.
