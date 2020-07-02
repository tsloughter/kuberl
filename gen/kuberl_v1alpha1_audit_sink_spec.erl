-module(kuberl_v1alpha1_audit_sink_spec).

-export([encode/1]).

-export_type([kuberl_v1alpha1_audit_sink_spec/0]).

-type kuberl_v1alpha1_audit_sink_spec() ::
    #{ 'policy' := kuberl_v1alpha1_policy:kuberl_v1alpha1_policy(),
       'webhook' := kuberl_v1alpha1_webhook:kuberl_v1alpha1_webhook()
     }.

encode(#{ 'policy' := Policy,
          'webhook' := Webhook
        }) ->
    #{ 'policy' => Policy,
       'webhook' => Webhook
     }.
