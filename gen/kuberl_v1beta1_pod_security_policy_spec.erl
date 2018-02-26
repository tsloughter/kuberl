-module(kuberl_v1beta1_pod_security_policy_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_pod_security_policy_spec/0]).

-type kuberl_v1beta1_pod_security_policy_spec() ::
    #{ 'allowPrivilegeEscalation' => boolean(),
       'allowedCapabilities' => list(),
       'allowedFlexVolumes' => list(),
       'allowedHostPaths' => list(),
       'defaultAddCapabilities' => list(),
       'defaultAllowPrivilegeEscalation' => boolean(),
       'fsGroup' := kuberl_v1beta1_fs_group_strategy_options:kuberl_v1beta1_fs_group_strategy_options(),
       'hostIPC' => boolean(),
       'hostNetwork' => boolean(),
       'hostPID' => boolean(),
       'hostPorts' => list(),
       'privileged' => boolean(),
       'readOnlyRootFilesystem' => boolean(),
       'requiredDropCapabilities' => list(),
       'runAsUser' := kuberl_v1beta1_run_as_user_strategy_options:kuberl_v1beta1_run_as_user_strategy_options(),
       'seLinux' := kuberl_v1beta1_se_linux_strategy_options:kuberl_v1beta1_se_linux_strategy_options(),
       'supplementalGroups' := kuberl_v1beta1_supplemental_groups_strategy_options:kuberl_v1beta1_supplemental_groups_strategy_options(),
       'volumes' => list()
     }.

encode(#{ 'allowPrivilegeEscalation' := AllowPrivilegeEscalation,
          'allowedCapabilities' := AllowedCapabilities,
          'allowedFlexVolumes' := AllowedFlexVolumes,
          'allowedHostPaths' := AllowedHostPaths,
          'defaultAddCapabilities' := DefaultAddCapabilities,
          'defaultAllowPrivilegeEscalation' := DefaultAllowPrivilegeEscalation,
          'fsGroup' := FsGroup,
          'hostIPC' := HostIPC,
          'hostNetwork' := HostNetwork,
          'hostPID' := HostPID,
          'hostPorts' := HostPorts,
          'privileged' := Privileged,
          'readOnlyRootFilesystem' := ReadOnlyRootFilesystem,
          'requiredDropCapabilities' := RequiredDropCapabilities,
          'runAsUser' := RunAsUser,
          'seLinux' := SeLinux,
          'supplementalGroups' := SupplementalGroups,
          'volumes' := Volumes
        }) ->
    #{ 'allowPrivilegeEscalation' => AllowPrivilegeEscalation,
       'allowedCapabilities' => AllowedCapabilities,
       'allowedFlexVolumes' => AllowedFlexVolumes,
       'allowedHostPaths' => AllowedHostPaths,
       'defaultAddCapabilities' => DefaultAddCapabilities,
       'defaultAllowPrivilegeEscalation' => DefaultAllowPrivilegeEscalation,
       'fsGroup' => FsGroup,
       'hostIPC' => HostIPC,
       'hostNetwork' => HostNetwork,
       'hostPID' => HostPID,
       'hostPorts' => HostPorts,
       'privileged' => Privileged,
       'readOnlyRootFilesystem' => ReadOnlyRootFilesystem,
       'requiredDropCapabilities' => RequiredDropCapabilities,
       'runAsUser' => RunAsUser,
       'seLinux' => SeLinux,
       'supplementalGroups' => SupplementalGroups,
       'volumes' => Volumes
     }.
