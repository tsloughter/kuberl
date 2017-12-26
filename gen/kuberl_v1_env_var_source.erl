-module(kuberl_v1_env_var_source).

-export([encode/1]).

-export_type([kuberl_v1_env_var_source/0]).

-type kuberl_v1_env_var_source() ::
    #{ 'configMapKeyRef' => kuberl_v1_config_map_key_selector:kuberl_v1_config_map_key_selector(),
       'fieldRef' => kuberl_v1_object_field_selector:kuberl_v1_object_field_selector(),
       'resourceFieldRef' => kuberl_v1_resource_field_selector:kuberl_v1_resource_field_selector(),
       'secretKeyRef' => kuberl_v1_secret_key_selector:kuberl_v1_secret_key_selector()
     }.

encode(#{ 'configMapKeyRef' := ConfigMapKeyRef,
          'fieldRef' := FieldRef,
          'resourceFieldRef' := ResourceFieldRef,
          'secretKeyRef' := SecretKeyRef
        }) ->
    #{ 'configMapKeyRef' => ConfigMapKeyRef,
       'fieldRef' => FieldRef,
       'resourceFieldRef' => ResourceFieldRef,
       'secretKeyRef' => SecretKeyRef
     }.
