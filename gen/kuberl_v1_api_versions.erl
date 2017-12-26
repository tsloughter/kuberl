-module(kuberl_v1_api_versions).

-export([encode/1]).

-export_type([kuberl_v1_api_versions/0]).

-type kuberl_v1_api_versions() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'serverAddressByClientCIDRs' := list(),
       'versions' := list()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'serverAddressByClientCIDRs' := ServerAddressByClientCIDRs,
          'versions' := Versions
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'serverAddressByClientCIDRs' => ServerAddressByClientCIDRs,
       'versions' => Versions
     }.
