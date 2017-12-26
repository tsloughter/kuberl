-module(kuberl_v1_pod_template).

-export([encode/1]).

-export_type([kuberl_v1_pod_template/0]).

-type kuberl_v1_pod_template() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'template' => kuberl_v1_pod_template_spec:kuberl_v1_pod_template_spec()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'template' := Template
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'template' => Template
     }.
