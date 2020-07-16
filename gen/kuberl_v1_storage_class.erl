-module(kuberl_v1_storage_class).

-export([encode/1]).

-export_type([kuberl_v1_storage_class/0]).

-type kuberl_v1_storage_class() ::
    #{ 'allowVolumeExpansion' => boolean(),
       'allowedTopologies' => list(),
       'apiVersion' => binary(),
       'kind' => binary(),
       'metadata' => kuberl_v1_object_meta:kuberl_v1_object_meta(),
       'mountOptions' => list(),
       'parameters' => maps:map(),
       'provisioner' := binary(),
       'reclaimPolicy' => binary(),
       'volumeBindingMode' => binary()
     }.

encode(#{ 'allowVolumeExpansion' := AllowVolumeExpansion,
          'allowedTopologies' := AllowedTopologies,
          'apiVersion' := ApiVersion,
          'kind' := Kind,
          'metadata' := Metadata,
          'mountOptions' := MountOptions,
          'parameters' := Parameters,
          'provisioner' := Provisioner,
          'reclaimPolicy' := ReclaimPolicy,
          'volumeBindingMode' := VolumeBindingMode
        }) ->
    #{ 'allowVolumeExpansion' => AllowVolumeExpansion,
       'allowedTopologies' => AllowedTopologies,
       'apiVersion' => ApiVersion,
       'kind' => Kind,
       'metadata' => Metadata,
       'mountOptions' => MountOptions,
       'parameters' => Parameters,
       'provisioner' => Provisioner,
       'reclaimPolicy' => ReclaimPolicy,
       'volumeBindingMode' => VolumeBindingMode
     }.
