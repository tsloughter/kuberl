-module(kuberl_apps_v1beta1_rollback_config).

-export([encode/1]).

-export_type([kuberl_apps_v1beta1_rollback_config/0]).

-type kuberl_apps_v1beta1_rollback_config() ::
    #{ 'revision' => integer()
     }.

encode(#{ 'revision' := Revision
        }) ->
    #{ 'revision' => Revision
     }.
