-module(kuberl_v1_windows_security_context_options).

-export([encode/1]).

-export_type([kuberl_v1_windows_security_context_options/0]).

-type kuberl_v1_windows_security_context_options() ::
    #{ 'gmsaCredentialSpec' => binary(),
       'gmsaCredentialSpecName' => binary(),
       'runAsUserName' => binary()
     }.

encode(#{ 'gmsaCredentialSpec' := GmsaCredentialSpec,
          'gmsaCredentialSpecName' := GmsaCredentialSpecName,
          'runAsUserName' := RunAsUserName
        }) ->
    #{ 'gmsaCredentialSpec' => GmsaCredentialSpec,
       'gmsaCredentialSpecName' => GmsaCredentialSpecName,
       'runAsUserName' => RunAsUserName
     }.
