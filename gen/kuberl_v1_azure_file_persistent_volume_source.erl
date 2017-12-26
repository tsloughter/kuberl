-module(kuberl_v1_azure_file_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_azure_file_persistent_volume_source/0]).

-type kuberl_v1_azure_file_persistent_volume_source() ::
    #{ 'readOnly' => boolean(),
       'secretName' := binary(),
       'secretNamespace' => binary(),
       'shareName' := binary()
     }.

encode(#{ 'readOnly' := ReadOnly,
          'secretName' := SecretName,
          'secretNamespace' := SecretNamespace,
          'shareName' := ShareName
        }) ->
    #{ 'readOnly' => ReadOnly,
       'secretName' => SecretName,
       'secretNamespace' => SecretNamespace,
       'shareName' => ShareName
     }.
