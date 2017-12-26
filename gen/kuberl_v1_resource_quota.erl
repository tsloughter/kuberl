-module(kuberl_v1_resource_quota).

-export([encode/1]).

-export_type([kuberl_v1_resource_quota/0]).

-type kuberl_v1_resource_quota() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' => kuberl_v1_resource_quota_spec:kuberl_v1_resource_quota_spec(),
       'status' => kuberl_v1_resource_quota_status:kuberl_v1_resource_quota_status()
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
