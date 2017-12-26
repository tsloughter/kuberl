-module(kuberl_v1_self_subject_access_review_spec).

-export([encode/1]).

-export_type([kuberl_v1_self_subject_access_review_spec/0]).

-type kuberl_v1_self_subject_access_review_spec() ::
    #{ 'nonResourceAttributes' => kuberl_v1_non_resource_attributes:kuberl_v1_non_resource_attributes(),
       'resourceAttributes' => kuberl_v1_resource_attributes:kuberl_v1_resource_attributes()
     }.

encode(#{ 'nonResourceAttributes' := NonResourceAttributes,
          'resourceAttributes' := ResourceAttributes
        }) ->
    #{ 'nonResourceAttributes' => NonResourceAttributes,
       'resourceAttributes' => ResourceAttributes
     }.
