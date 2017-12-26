-module(kuberl_v1_pod_anti_affinity).

-export([encode/1]).

-export_type([kuberl_v1_pod_anti_affinity/0]).

-type kuberl_v1_pod_anti_affinity() ::
    #{ 'preferredDuringSchedulingIgnoredDuringExecution' => list(),
       'requiredDuringSchedulingIgnoredDuringExecution' => list()
     }.

encode(#{ 'preferredDuringSchedulingIgnoredDuringExecution' := PreferredDuringSchedulingIgnoredDuringExecution,
          'requiredDuringSchedulingIgnoredDuringExecution' := RequiredDuringSchedulingIgnoredDuringExecution
        }) ->
    #{ 'preferredDuringSchedulingIgnoredDuringExecution' => PreferredDuringSchedulingIgnoredDuringExecution,
       'requiredDuringSchedulingIgnoredDuringExecution' => RequiredDuringSchedulingIgnoredDuringExecution
     }.
