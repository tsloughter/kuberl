-module(kuberl_v1_azure_file_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_azure_file_volume_source/0]).

-type kuberl_v1_azure_file_volume_source() ::
    #{ 'readOnly' => boolean(),
       'secretName' := binary(),
       'shareName' := binary()
     }.

encode(#{ 'readOnly' := ReadOnly,
          'secretName' := SecretName,
          'shareName' := ShareName
        }) ->
    #{ 'readOnly' => ReadOnly,
       'secretName' => SecretName,
       'shareName' => ShareName
     }.
