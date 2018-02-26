-module(kuberl_v1alpha1_volume_attachment_source).

-export([encode/1]).

-export_type([kuberl_v1alpha1_volume_attachment_source/0]).

-type kuberl_v1alpha1_volume_attachment_source() ::
    #{ 'persistentVolumeName' => binary()
     }.

encode(#{ 'persistentVolumeName' := PersistentVolumeName
        }) ->
    #{ 'persistentVolumeName' => PersistentVolumeName
     }.
