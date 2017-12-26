-module(kuberl_v1beta1_subject_access_review_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_subject_access_review_spec/0]).

-type kuberl_v1beta1_subject_access_review_spec() ::
    #{ 'extra' => maps:map(),
       'group' => list(),
       'nonResourceAttributes' => kuberl_v1beta1_non_resource_attributes:kuberl_v1beta1_non_resource_attributes(),
       'resourceAttributes' => kuberl_v1beta1_resource_attributes:kuberl_v1beta1_resource_attributes(),
       'uid' => binary(),
       'user' => binary()
     }.

encode(#{ 'extra' := Extra,
          'group' := Group,
          'nonResourceAttributes' := NonResourceAttributes,
          'resourceAttributes' := ResourceAttributes,
          'uid' := Uid,
          'user' := User
        }) ->
    #{ 'extra' => Extra,
       'group' => Group,
       'nonResourceAttributes' => NonResourceAttributes,
       'resourceAttributes' => ResourceAttributes,
       'uid' => Uid,
       'user' => User
     }.
