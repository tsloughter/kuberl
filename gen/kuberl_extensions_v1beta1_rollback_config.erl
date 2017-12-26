-module(kuberl_extensions_v1beta1_rollback_config).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_rollback_config/0]).

-type kuberl_extensions_v1beta1_rollback_config() ::
    #{ 'revision' => integer()
     }.

encode(#{ 'revision' := Revision
        }) ->
    #{ 'revision' => Revision
     }.
