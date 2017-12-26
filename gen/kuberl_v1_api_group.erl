-module(kuberl_v1_api_group).

-export([encode/1]).

-export_type([kuberl_v1_api_group/0]).

-type kuberl_v1_api_group() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'name' := binary(),
       'preferredVersion' => kuberl_v1_group_version_for_discovery:kuberl_v1_group_version_for_discovery(),
       'serverAddressByClientCIDRs' := list(),
       'versions' := list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'name' := Name,
          'preferredVersion' := PreferredVersion,
          'serverAddressByClientCIDRs' := ServerAddressByClientCIDRs,
          'versions' := Versions
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'name' => Name,
       'preferredVersion' => PreferredVersion,
       'serverAddressByClientCIDRs' => ServerAddressByClientCIDRs,
       'versions' => Versions
     }.
