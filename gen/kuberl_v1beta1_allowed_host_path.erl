-module(kuberl_v1beta1_allowed_host_path).

-export([encode/1]).

-export_type([kuberl_v1beta1_allowed_host_path/0]).

-type kuberl_v1beta1_allowed_host_path() ::
    #{ 'pathPrefix' => binary()
     }.

encode(#{ 'pathPrefix' := PathPrefix
        }) ->
    #{ 'pathPrefix' => PathPrefix
     }.
