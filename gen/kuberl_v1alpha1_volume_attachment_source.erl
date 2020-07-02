-module(kuberl_v1alpha1_volume_attachment_source).

-export([encode/1]).

-export_type([kuberl_v1alpha1_volume_attachment_source/0]).

-type kuberl_v1alpha1_volume_attachment_source() ::
    #{ 'inlineVolumeSpec' => kuberl_v1_persistent_volume_spec:kuberl_v1_persistent_volume_spec(),
       'persistentVolumeName' => binary()
     }.

encode(#{ 'inlineVolumeSpec' := InlineVolumeSpec,
          'persistentVolumeName' := PersistentVolumeName
        }) ->
    #{ 'inlineVolumeSpec' => InlineVolumeSpec,
       'persistentVolumeName' => PersistentVolumeName
     }.
