-module(kuberl_v1_env_from_source).

-export([encode/1]).

-export_type([kuberl_v1_env_from_source/0]).

-type kuberl_v1_env_from_source() ::
    #{ 'configMapRef' => kuberl_v1_config_map_env_source:kuberl_v1_config_map_env_source(),
       'prefix' => binary(),
       'secretRef' => kuberl_v1_secret_env_source:kuberl_v1_secret_env_source()
     }.

encode(#{ 'configMapRef' := ConfigMapRef,
          'prefix' := Prefix,
          'secretRef' := SecretRef
        }) ->
    #{ 'configMapRef' => ConfigMapRef,
       'prefix' => Prefix,
       'secretRef' => SecretRef
     }.
