-module(kuberl_extensions_v1beta1_deployment_rollback).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_deployment_rollback/0]).

-type kuberl_extensions_v1beta1_deployment_rollback() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'name' := binary(),
       'rollbackTo' := kuberl_extensions_v1beta1_rollback_config:kuberl_extensions_v1beta1_rollback_config(),
       'updatedAnnotations' => maps:map()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'name' := Name,
          'rollbackTo' := RollbackTo,
          'updatedAnnotations' := UpdatedAnnotations
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'name' => Name,
       'rollbackTo' => RollbackTo,
       'updatedAnnotations' => UpdatedAnnotations
     }.
