-module(kuberl_v1_pod_security_context).

-export([encode/1]).

-export_type([kuberl_v1_pod_security_context/0]).

-type kuberl_v1_pod_security_context() ::
    #{ 'fsGroup' => integer(),
       'runAsGroup' => integer(),
       'runAsNonRoot' => boolean(),
       'runAsUser' => integer(),
       'seLinuxOptions' => kuberl_v1_se_linux_options:kuberl_v1_se_linux_options(),
       'supplementalGroups' => list(),
       'sysctls' => list(),
       'windowsOptions' => kuberl_v1_windows_security_context_options:kuberl_v1_windows_security_context_options()
     }.

encode(#{ 'fsGroup' := FsGroup,
          'runAsGroup' := RunAsGroup,
          'runAsNonRoot' := RunAsNonRoot,
          'runAsUser' := RunAsUser,
          'seLinuxOptions' := SeLinuxOptions,
          'supplementalGroups' := SupplementalGroups,
          'sysctls' := Sysctls,
          'windowsOptions' := WindowsOptions
        }) ->
    #{ 'fsGroup' => FsGroup,
       'runAsGroup' => RunAsGroup,
       'runAsNonRoot' => RunAsNonRoot,
       'runAsUser' => RunAsUser,
       'seLinuxOptions' => SeLinuxOptions,
       'supplementalGroups' => SupplementalGroups,
       'sysctls' => Sysctls,
       'windowsOptions' => WindowsOptions
     }.
