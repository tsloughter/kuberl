-module(kuberl_v1_group_version_for_discovery).

-export([encode/1]).

-export_type([kuberl_v1_group_version_for_discovery/0]).

-type kuberl_v1_group_version_for_discovery() ::
    #{ 'groupVersion' := binary(),
       'version' := binary()
     }.

encode(#{ 'groupVersion' := GroupVersion,
          'version' := Version
        }) ->
    #{ 'groupVersion' => GroupVersion,
       'version' => Version
     }.
