-module(kuberl_v1_node_affinity).

-export([encode/1]).

-export_type([kuberl_v1_node_affinity/0]).

-type kuberl_v1_node_affinity() ::
    #{ 'preferredDuringSchedulingIgnoredDuringExecution' => list(),
       'requiredDuringSchedulingIgnoredDuringExecution' => kuberl_v1_node_selector:kuberl_v1_node_selector()
     }.

encode(#{ 'preferredDuringSchedulingIgnoredDuringExecution' := PreferredDuringSchedulingIgnoredDuringExecution,
          'requiredDuringSchedulingIgnoredDuringExecution' := RequiredDuringSchedulingIgnoredDuringExecution
        }) ->
    #{ 'preferredDuringSchedulingIgnoredDuringExecution' => PreferredDuringSchedulingIgnoredDuringExecution,
       'requiredDuringSchedulingIgnoredDuringExecution' => RequiredDuringSchedulingIgnoredDuringExecution
     }.
