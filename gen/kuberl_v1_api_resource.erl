-module(kuberl_v1_api_resource).

-export([encode/1]).

-export_type([kuberl_v1_api_resource/0]).

-type kuberl_v1_api_resource() ::
    #{ 'categories' => list(),
       'group' => binary(),
       'kind' := binary(),
       'name' := binary(),
       'namespaced' := boolean(),
       'shortNames' => list(),
       'singularName' := binary(),
       'verbs' := list(),
       'version' => binary()
     }.

encode(#{ 'categories' := Categories,
          'group' := Group,
          'kind' := Kind,
          'name' := Name,
          'namespaced' := Namespaced,
          'shortNames' := ShortNames,
          'singularName' := SingularName,
          'verbs' := Verbs,
          'version' := Version
        }) ->
    #{ 'categories' => Categories,
       'group' => Group,
       'kind' => Kind,
       'name' => Name,
       'namespaced' => Namespaced,
       'shortNames' => ShortNames,
       'singularName' => SingularName,
       'verbs' => Verbs,
       'version' => Version
     }.
