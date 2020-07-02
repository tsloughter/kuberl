-module(kuberl_v1_external_documentation).

-export([encode/1]).

-export_type([kuberl_v1_external_documentation/0]).

-type kuberl_v1_external_documentation() ::
    #{ 'description' => binary(),
       'url' => binary()
     }.

encode(#{ 'description' := Description,
          'url' := Url
        }) ->
    #{ 'description' => Description,
       'url' => Url
     }.
