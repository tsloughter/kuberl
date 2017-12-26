-module(kuberl_v1_container).

-export([encode/1]).

-export_type([kuberl_v1_container/0]).

-type kuberl_v1_container() ::
    #{ 'args' => list(),
       'command' => list(),
       'env' => list(),
       'envFrom' => list(),
       'image' => binary(),
       'imagePullPolicy' => binary(),
       'lifecycle' => kuberl_v1_lifecycle:kuberl_v1_lifecycle(),
       'livenessProbe' => kuberl_v1_probe:kuberl_v1_probe(),
       'name' := binary(),
       'ports' => list(),
       'readinessProbe' => kuberl_v1_probe:kuberl_v1_probe(),
       'resources' => kuberl_v1_resource_requirements:kuberl_v1_resource_requirements(),
       'securityContext' => kuberl_v1_security_context:kuberl_v1_security_context(),
       'stdin' => boolean(),
       'stdinOnce' => boolean(),
       'terminationMessagePath' => binary(),
       'terminationMessagePolicy' => binary(),
       'tty' => boolean(),
       'volumeMounts' => list(),
       'workingDir' => binary()
     }.

encode(#{ 'args' := Args,
          'command' := Command,
          'env' := Env,
          'envFrom' := EnvFrom,
          'image' := Image,
          'imagePullPolicy' := ImagePullPolicy,
          'lifecycle' := Lifecycle,
          'livenessProbe' := LivenessProbe,
          'name' := Name,
          'ports' := Ports,
          'readinessProbe' := ReadinessProbe,
          'resources' := Resources,
          'securityContext' := SecurityContext,
          'stdin' := Stdin,
          'stdinOnce' := StdinOnce,
          'terminationMessagePath' := TerminationMessagePath,
          'terminationMessagePolicy' := TerminationMessagePolicy,
          'tty' := Tty,
          'volumeMounts' := VolumeMounts,
          'workingDir' := WorkingDir
        }) ->
    #{ 'args' => Args,
       'command' => Command,
       'env' => Env,
       'envFrom' => EnvFrom,
       'image' => Image,
       'imagePullPolicy' => ImagePullPolicy,
       'lifecycle' => Lifecycle,
       'livenessProbe' => LivenessProbe,
       'name' => Name,
       'ports' => Ports,
       'readinessProbe' => ReadinessProbe,
       'resources' => Resources,
       'securityContext' => SecurityContext,
       'stdin' => Stdin,
       'stdinOnce' => StdinOnce,
       'terminationMessagePath' => TerminationMessagePath,
       'terminationMessagePolicy' => TerminationMessagePolicy,
       'tty' => Tty,
       'volumeMounts' => VolumeMounts,
       'workingDir' => WorkingDir
     }.
