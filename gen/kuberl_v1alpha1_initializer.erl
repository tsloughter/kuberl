-module(kuberl_v1alpha1_initializer).

-export([encode/1]).

-export_type([kuberl_v1alpha1_initializer/0]).

-type kuberl_v1alpha1_initializer() ::
    #{ 'name' := binary(),
       'rules' => list()
     }.

encode(#{ 'name' := Name,
          'rules' := Rules
        }) ->
    #{ 'name' => Name,
       'rules' => Rules
     }.
