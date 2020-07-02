-module(kuberl_v1beta1_csi_driver_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_csi_driver_spec/0]).

-type kuberl_v1beta1_csi_driver_spec() ::
    #{ 'attachRequired' => boolean(),
       'podInfoOnMount' => boolean(),
       'volumeLifecycleModes' => list()
     }.

encode(#{ 'attachRequired' := AttachRequired,
          'podInfoOnMount' := PodInfoOnMount,
          'volumeLifecycleModes' := VolumeLifecycleModes
        }) ->
    #{ 'attachRequired' => AttachRequired,
       'podInfoOnMount' => PodInfoOnMount,
       'volumeLifecycleModes' => VolumeLifecycleModes
     }.
