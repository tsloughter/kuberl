-module(kuberl_extensions_v1beta1_allowed_host_path).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_allowed_host_path/0]).

-type kuberl_extensions_v1beta1_allowed_host_path() ::
    #{ 'pathPrefix' => binary(),
       'readOnly' => boolean()
     }.

encode(#{ 'pathPrefix' := PathPrefix,
          'readOnly' := ReadOnly
        }) ->
    #{ 'pathPrefix' => PathPrefix,
       'readOnly' => ReadOnly
     }.
