-module(kuberl_v1beta1_custom_resource_subresources).

-export([encode/1]).

-export_type([kuberl_v1beta1_custom_resource_subresources/0]).

-type kuberl_v1beta1_custom_resource_subresources() ::
    #{ 'scale' => kuberl_v1beta1_custom_resource_subresource_scale:kuberl_v1beta1_custom_resource_subresource_scale(),
       'status' => maps:map()
     }.

encode(#{ 'scale' := Scale,
          'status' := Status
        }) ->
    #{ 'scale' => Scale,
       'status' => Status
     }.
