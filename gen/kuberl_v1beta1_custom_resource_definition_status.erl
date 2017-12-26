-module(kuberl_v1beta1_custom_resource_definition_status).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_definition_status/0]).

-type kuberl_v1beta1_custom_resource_definition_status() ::
    #{ 'acceptedNames' := kuberl_v1beta1_custom_resource_definition_names:kuberl_v1beta1_custom_resource_definition_names(),
       'conditions' := list()
     }.

encode(#{ 'acceptedNames' := AcceptedNames,
          'conditions' := Conditions
        }) ->
    #{ 'acceptedNames' => AcceptedNames,
       'conditions' => Conditions
     }.
