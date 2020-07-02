-module(kuberl_extensions_v1beta1_allowed_csi_driver).

-export([encode/1]).

-export_type([kuberl_extensions_v1beta1_allowed_csi_driver/0]).

-type kuberl_extensions_v1beta1_allowed_csi_driver() ::
    #{ 'name' := binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
