-module(kuberl_networking_v1beta1_ingress_list).

-export([encode/1]).

-export_type([kuberl_networking_v1beta1_ingress_list/0]).

-type kuberl_networking_v1beta1_ingress_list() ::
    #{ 'apiVersion' => binary(),
       'items' := list(),
       'kind' => binary(),
       'metadata' => kuberl_v1_list_meta:kuberl_v1_list_meta()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'items' := Items,
          'kind' := Kind,
          'metadata' := Metadata
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'items' => Items,
       'kind' => Kind,
       'metadata' => Metadata
     }.
