-module(kuberl_v1_subject_access_review_spec).

-export([encode/1]).

-export_type([kuberl_v1_subject_access_review_spec/0]).

-type kuberl_v1_subject_access_review_spec() ::
    #{ 'extra' => maps:map(),
       'groups' => list(),
       'nonResourceAttributes' => kuberl_v1_non_resource_attributes:kuberl_v1_non_resource_attributes(),
       'resourceAttributes' => kuberl_v1_resource_attributes:kuberl_v1_resource_attributes(),
       'uid' => binary(),
       'user' => binary()
     }.

encode(#{ 'extra' := Extra,
          'groups' := Groups,
          'nonResourceAttributes' := NonResourceAttributes,
          'resourceAttributes' := ResourceAttributes,
          'uid' := Uid,
          'user' := User
        }) ->
    #{ 'extra' => Extra,
       'groups' => Groups,
       'nonResourceAttributes' => NonResourceAttributes,
       'resourceAttributes' => ResourceAttributes,
       'uid' => Uid,
       'user' => User
     }.
