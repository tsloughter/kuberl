-module(kuberl_v1_delete_options).

-export([encode/1]).

-export_type([kuberl_v1_delete_options/0]).

-type kuberl_v1_delete_options() ::
    #{ 'apiVersion' => binary(),
       'gracePeriodSeconds' => integer(),
       'kind' => binary(),
       'orphanDependents' => boolean(),
       'preconditions' => kuberl_v1_preconditions:kuberl_v1_preconditions(),
       'propagationPolicy' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'gracePeriodSeconds' := GracePeriodSeconds,
          'kind' := Kind,
          'orphanDependents' := OrphanDependents,
          'preconditions' := Preconditions,
          'propagationPolicy' := PropagationPolicy
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'gracePeriodSeconds' => GracePeriodSeconds,
       'kind' => Kind,
       'orphanDependents' => OrphanDependents,
       'preconditions' => Preconditions,
       'propagationPolicy' => PropagationPolicy
     }.
