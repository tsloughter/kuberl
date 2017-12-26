-module(kuberl_v1_non_resource_attributes).

-export([encode/1]).

-export_type([kuberl_v1_non_resource_attributes/0]).

-type kuberl_v1_non_resource_attributes() ::
    #{ 'path' => binary(),
       'verb' => binary()
     }.

encode(#{ 'path' := Path,
          'verb' := Verb
        }) ->
    #{ 'path' => Path,
       'verb' => Verb
     }.
