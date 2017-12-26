-module(kuberl_v1_security_context).

-export([encode/1]).

-export_type([kuberl_v1_security_context/0]).

-type kuberl_v1_security_context() ::
    #{ 'allowPrivilegeEscalation' => boolean(),
       'capabilities' => kuberl_v1_capabilities:kuberl_v1_capabilities(),
       'privileged' => boolean(),
       'readOnlyRootFilesystem' => boolean(),
       'runAsNonRoot' => boolean(),
       'runAsUser' => integer(),
       'seLinuxOptions' => kuberl_v1_se_linux_options:kuberl_v1_se_linux_options()
     }.

encode(#{ 'allowPrivilegeEscalation' := AllowPrivilegeEscalation,
          'capabilities' := Capabilities,
          'privileged' := Privileged,
          'readOnlyRootFilesystem' := ReadOnlyRootFilesystem,
          'runAsNonRoot' := RunAsNonRoot,
          'runAsUser' := RunAsUser,
          'seLinuxOptions' := SeLinuxOptions
        }) ->
    #{ 'allowPrivilegeEscalation' => AllowPrivilegeEscalation,
       'capabilities' => Capabilities,
       'privileged' => Privileged,
       'readOnlyRootFilesystem' => ReadOnlyRootFilesystem,
       'runAsNonRoot' => RunAsNonRoot,
       'runAsUser' => RunAsUser,
       'seLinuxOptions' => SeLinuxOptions
     }.
