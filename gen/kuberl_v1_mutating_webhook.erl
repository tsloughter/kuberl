-module(kuberl_v1_mutating_webhook).

-export([encode/1]).

-export_type([kuberl_v1_mutating_webhook/0]).

-type kuberl_v1_mutating_webhook() ::
    #{ 'admissionReviewVersions' := list(),
       'clientConfig' := kuberl_admissionregistration_v1_webhook_client_config:kuberl_admissionregistration_v1_webhook_client_config(),
       'failurePolicy' => binary(),
       'matchPolicy' => binary(),
       'name' := binary(),
       'namespaceSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'objectSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'reinvocationPolicy' => binary(),
       'rules' => list(),
       'sideEffects' := binary(),
       'timeoutSeconds' => integer()
     }.

encode(#{ 'admissionReviewVersions' := AdmissionReviewVersions,
          'clientConfig' := ClientConfig,
          'failurePolicy' := FailurePolicy,
          'matchPolicy' := MatchPolicy,
          'name' := Name,
          'namespaceSelector' := NamespaceSelector,
          'objectSelector' := ObjectSelector,
          'reinvocationPolicy' := ReinvocationPolicy,
          'rules' := Rules,
          'sideEffects' := SideEffects,
          'timeoutSeconds' := TimeoutSeconds
        }) ->
    #{ 'admissionReviewVersions' => AdmissionReviewVersions,
       'clientConfig' => ClientConfig,
       'failurePolicy' => FailurePolicy,
       'matchPolicy' => MatchPolicy,
       'name' => Name,
       'namespaceSelector' => NamespaceSelector,
       'objectSelector' => ObjectSelector,
       'reinvocationPolicy' => ReinvocationPolicy,
       'rules' => Rules,
       'sideEffects' => SideEffects,
       'timeoutSeconds' => TimeoutSeconds
     }.
