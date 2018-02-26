-module(kuberl_v1_pod_dns_config).

-export([encode/1]).

-export_type([kuberl_v1_pod_dns_config/0]).

-type kuberl_v1_pod_dns_config() ::
    #{ 'nameservers' => list(),
       'options' => list(),
       'searches' => list()
     }.

encode(#{ 'nameservers' := Nameservers,
          'options' := Options,
          'searches' := Searches
        }) ->
    #{ 'nameservers' => Nameservers,
       'options' => Options,
       'searches' => Searches
     }.
