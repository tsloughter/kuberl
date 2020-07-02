-module(kuberl_v1beta1_csi_driver).

-export([encode/1]).

-export_type([kuberl_v1beta1_csi_driver/0]).

-type kuberl_v1beta1_csi_driver() ::
    #{ 'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'spec' := kuberl_v1beta1_csi_driver_spec:kuberl_v1beta1_csi_driver_spec()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'spec' := Spec
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'spec' => Spec
     }.
