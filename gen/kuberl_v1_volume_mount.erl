-module(kuberl_v1_volume_mount).

-export([encode/1]).

-export_type([kuberl_v1_volume_mount/0]).

-type kuberl_v1_volume_mount() ::
    #{ 'mountPath' := binary(),
       'mountPropagation' => binary(),
       'name' := binary(),
       'readOnly' => boolean(),
       'subPath' => binary(),
       'subPathExpr' => binary()
     }.

encode(#{ 'mountPath' := MountPath,
          'mountPropagation' := MountPropagation,
          'name' := Name,
          'readOnly' := ReadOnly,
          'subPath' := SubPath,
          'subPathExpr' := SubPathExpr
        }) ->
    #{ 'mountPath' => MountPath,
       'mountPropagation' => MountPropagation,
       'name' => Name,
       'readOnly' => ReadOnly,
       'subPath' => SubPath,
       'subPathExpr' => SubPathExpr
     }.
