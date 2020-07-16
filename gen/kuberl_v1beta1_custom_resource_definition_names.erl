-module(kuberl_v1beta1_custom_resource_definition_names).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_definition_names/0]).

-type kuberl_v1beta1_custom_resource_definition_names() ::
    #{ 'categories' => list(),
       'kind' := binary(),
       'listKind' => binary(),
       'plural' := binary(),
       'shortNames' => list(),
       'singular' => binary()
     }.

encode(#{ 'categories' := Categories,
          'kind' := Kind,
          'listKind' := ListKind,
          'plural' := Plural,
          'shortNames' := ShortNames,
          'singular' := Singular
        }) ->
    #{ 'categories' => Categories,
       'kind' => Kind,
       'listKind' => ListKind,
       'plural' => Plural,
       'shortNames' => ShortNames,
       'singular' => Singular
     }.
