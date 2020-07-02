-module(kuberl_v1alpha1_runtime_class_spec).

-export([encode/1]).

-export_type([kuberl_v1alpha1_runtime_class_spec/0]).

-type kuberl_v1alpha1_runtime_class_spec() ::
    #{ 'overhead' => kuberl_v1alpha1_overhead:kuberl_v1alpha1_overhead(),
       'runtimeHandler' := binary(),
       'scheduling' => kuberl_v1alpha1_scheduling:kuberl_v1alpha1_scheduling()
     }.

encode(#{ 'overhead' := Overhead,
          'runtimeHandler' := RuntimeHandler,
          'scheduling' := Scheduling
        }) ->
    #{ 'overhead' => Overhead,
       'runtimeHandler' => RuntimeHandler,
       'scheduling' => Scheduling
     }.
