-module(kuberl_v1_resource_requirements).

-export([encode/1]).

-export_type([kuberl_v1_resource_requirements/0]).

-type kuberl_v1_resource_requirements() ::
    #{ 'limits' => maps:map(),
       'requests' => maps:map()
     }.

encode(#{ 'limits' := Limits,
          'requests' := Requests
        }) ->
    #{ 'limits' => Limits,
       'requests' => Requests
     }.
