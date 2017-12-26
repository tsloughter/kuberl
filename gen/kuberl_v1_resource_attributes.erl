-module(kuberl_v1_resource_attributes).

-export([encode/1]).

-export_type([kuberl_v1_resource_attributes/0]).

-type kuberl_v1_resource_attributes() ::
    #{ 'group' => binary(),
       'name' => binary(),
       'namespace' => binary(),
       'resource' => binary(),
       'subresource' => binary(),
       'verb' => binary(),
       'version' => binary()
     }.

encode(#{ 'group' := Group,
          'name' := Name,
          'namespace' := Namespace,
          'resource' := Resource,
          'subresource' := Subresource,
          'verb' := Verb,
          'version' := Version
        }) ->
    #{ 'group' => Group,
       'name' => Name,
       'namespace' => Namespace,
       'resource' => Resource,
       'subresource' => Subresource,
       'verb' => Verb,
       'version' => Version
     }.
