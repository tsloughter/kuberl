-module(kuberl_v1_pod_security_context).

-export([encode/1]).

-export_type([kuberl_v1_pod_security_context/0]).

-type kuberl_v1_pod_security_context() ::
    #{ 'fsGroup' => integer(),
       'runAsNonRoot' => boolean(),
       'runAsUser' => integer(),
       'seLinuxOptions' => kuberl_v1_se_linux_options:kuberl_v1_se_linux_options(),
       'supplementalGroups' => list()
     }.

encode(#{ 'fsGroup' := FsGroup,
          'runAsNonRoot' := RunAsNonRoot,
          'runAsUser' := RunAsUser,
          'seLinuxOptions' := SeLinuxOptions,
          'supplementalGroups' := SupplementalGroups
        }) ->
    #{ 'fsGroup' => FsGroup,
       'runAsNonRoot' => RunAsNonRoot,
       'runAsUser' => RunAsUser,
       'seLinuxOptions' => SeLinuxOptions,
       'supplementalGroups' => SupplementalGroups
     }.
