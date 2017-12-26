-module(kuberl_v1alpha1_external_admission_hook).

-export([encode/1]).

-export_type([kuberl_v1alpha1_external_admission_hook/0]).

-type kuberl_v1alpha1_external_admission_hook() ::
    #{ 'clientConfig' := kuberl_v1alpha1_admission_hook_client_config:kuberl_v1alpha1_admission_hook_client_config(),
       'failurePolicy' => binary(),
       'name' := binary(),
       'rules' => list()
     }.

encode(#{ 'clientConfig' := ClientConfig,
          'failurePolicy' := FailurePolicy,
          'name' := Name,
          'rules' := Rules
        }) ->
    #{ 'clientConfig' => ClientConfig,
       'failurePolicy' => FailurePolicy,
       'name' => Name,
       'rules' => Rules
     }.
