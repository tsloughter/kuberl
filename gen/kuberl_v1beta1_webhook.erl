-module(kuberl_v1beta1_webhook).

-export([encode/1]).

-export_type([kuberl_v1beta1_webhook/0]).

-type kuberl_v1beta1_webhook() ::
    #{ 'clientConfig' := kuberl_v1beta1_webhook_client_config:kuberl_v1beta1_webhook_client_config(),
       'failurePolicy' => binary(),
       'name' := binary(),
       'namespaceSelector' => kuberl_v1_label_selector:kuberl_v1_label_selector(),
       'rules' => list()
     }.

encode(#{ 'clientConfig' := ClientConfig,
          'failurePolicy' := FailurePolicy,
          'name' := Name,
          'namespaceSelector' := NamespaceSelector,
          'rules' := Rules
        }) ->
    #{ 'clientConfig' => ClientConfig,
       'failurePolicy' => FailurePolicy,
       'name' => Name,
       'namespaceSelector' => NamespaceSelector,
       'rules' => Rules
     }.
