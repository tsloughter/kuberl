-module(kuberl_v1_token_request).

-export([encode/1]).

-export_type([kuberl_v1_token_request/0]).

-type kuberl_v1_token_request() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' := kuberl_v1_token_request_spec:kuberl_v1_token_request_spec(),
       'status' => kuberl_v1_token_request_status:kuberl_v1_token_request_status()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec,
          'status' := Status
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec,
       'status' => Status
     }.
