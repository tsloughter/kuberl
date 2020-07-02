-module(kuberl_v1_api_service_status).

-export([encode/1]).

-export_type([kuberl_v1_api_service_status/0]).

-type kuberl_v1_api_service_status() ::
    #{ 'conditions' => list()
     }.

encode(#{ 'conditions' := Conditions
        }) ->
    #{ 'conditions' => Conditions
     }.
