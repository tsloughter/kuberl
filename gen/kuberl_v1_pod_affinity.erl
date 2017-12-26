-module(kuberl_v1_pod_affinity).

-export([encode/1]).

-export_type([kuberl_v1_pod_affinity/0]).

-type kuberl_v1_pod_affinity() ::
    #{ 'preferredDuringSchedulingIgnoredDuringExecution' => list(),
       'requiredDuringSchedulingIgnoredDuringExecution' => list()
     }.

encode(#{ 'preferredDuringSchedulingIgnoredDuringExecution' := PreferredDuringSchedulingIgnoredDuringExecution,
          'requiredDuringSchedulingIgnoredDuringExecution' := RequiredDuringSchedulingIgnoredDuringExecution
        }) ->
    #{ 'preferredDuringSchedulingIgnoredDuringExecution' => PreferredDuringSchedulingIgnoredDuringExecution,
       'requiredDuringSchedulingIgnoredDuringExecution' => RequiredDuringSchedulingIgnoredDuringExecution
     }.
