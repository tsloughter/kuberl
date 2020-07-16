-module(kuberl_v1_custom_resource_subresource_scale).

-export([encode/1]).

-export_type([kuberl_v1_custom_resource_subresource_scale/0]).

-type kuberl_v1_custom_resource_subresource_scale() ::
    #{ 'labelSelectorPath' => binary(),
       'specReplicasPath' := binary(),
       'statusReplicasPath' := binary()
     }.

encode(#{ 'labelSelectorPath' := LabelSelectorPath,
          'specReplicasPath' := SpecReplicasPath,
          'statusReplicasPath' := StatusReplicasPath
        }) ->
    #{ 'labelSelectorPath' => LabelSelectorPath,
       'specReplicasPath' => SpecReplicasPath,
       'statusReplicasPath' => StatusReplicasPath
     }.
