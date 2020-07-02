-module(kuberl_v1_security_context).

-export([encode/1]).

-export_type([kuberl_v1_security_context/0]).

-type kuberl_v1_security_context() ::
    #{ 'allowPrivilegeEscalation' => boolean(),
       'capabilities' => kuberl_v1_capabilities:kuberl_v1_capabilities(),
       'privileged' => boolean(),
       'procMount' => binary(),
       'readOnlyRootFilesystem' => boolean(),
       'runAsGroup' => integer(),
       'runAsNonRoot' => boolean(),
       'runAsUser' => integer(),
       'seLinuxOptions' => kuberl_v1_se_linux_options:kuberl_v1_se_linux_options(),
       'windowsOptions' => kuberl_v1_windows_security_context_options:kuberl_v1_windows_security_context_options()
     }.

encode(#{ 'allowPrivilegeEscalation' := AllowPrivilegeEscalation,
          'capabilities' := Capabilities,
          'privileged' := Privileged,
          'procMount' := ProcMount,
          'readOnlyRootFilesystem' := ReadOnlyRootFilesystem,
          'runAsGroup' := RunAsGroup,
          'runAsNonRoot' := RunAsNonRoot,
          'runAsUser' := RunAsUser,
          'seLinuxOptions' := SeLinuxOptions,
          'windowsOptions' := WindowsOptions
        }) ->
    #{ 'allowPrivilegeEscalation' => AllowPrivilegeEscalation,
       'capabilities' => Capabilities,
       'privileged' => Privileged,
       'procMount' => ProcMount,
       'readOnlyRootFilesystem' => ReadOnlyRootFilesystem,
       'runAsGroup' => RunAsGroup,
       'runAsNonRoot' => RunAsNonRoot,
       'runAsUser' => RunAsUser,
       'seLinuxOptions' => SeLinuxOptions,
       'windowsOptions' => WindowsOptions
     }.
