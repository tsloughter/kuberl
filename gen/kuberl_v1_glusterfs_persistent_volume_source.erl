-module(kuberl_v1_glusterfs_persistent_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_glusterfs_persistent_volume_source/0]).

-type kuberl_v1_glusterfs_persistent_volume_source() ::
    #{ 'endpoints' := binary(),
       'endpointsNamespace' => binary(),
       'path' := binary(),
       'readOnly' => boolean()
     }.

encode(#{ 'endpoints' := Endpoints,
          'endpointsNamespace' := EndpointsNamespace,
          'path' := Path,
          'readOnly' := ReadOnly
        }) ->
    #{ 'endpoints' => Endpoints,
       'endpointsNamespace' => EndpointsNamespace,
       'path' => Path,
       'readOnly' => ReadOnly
     }.
