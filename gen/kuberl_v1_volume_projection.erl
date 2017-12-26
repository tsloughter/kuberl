-module(kuberl_v1_volume_projection).

-export([encode/1]).

-export_type([kuberl_v1_volume_projection/0]).

-type kuberl_v1_volume_projection() ::
    #{ 'configMap' => kuberl_v1_config_map_projection:kuberl_v1_config_map_projection(),
       'downwardAPI' => kuberl_v1_downward_api_projection:kuberl_v1_downward_api_projection(),
       'secret' => kuberl_v1_secret_projection:kuberl_v1_secret_projection()
     }.

encode(#{ 'configMap' := ConfigMap,
          'downwardAPI' := DownwardAPI,
          'secret' := Secret
        }) ->
    #{ 'configMap' => ConfigMap,
       'downwardAPI' => DownwardAPI,
       'secret' => Secret
     }.
