-module(kuberl_v1_downward_api_volume_file).

-export([encode/1]).

-export_type([kuberl_v1_downward_api_volume_file/0]).

-type kuberl_v1_downward_api_volume_file() ::
    #{ 'fieldRef' => kuberl_v1_object_field_selector:kuberl_v1_object_field_selector(),
       'mode' => integer(),
       'path' := binary(),
       'resourceFieldRef' => kuberl_v1_resource_field_selector:kuberl_v1_resource_field_selector()
     }.

encode(#{ 'fieldRef' := FieldRef,
          'mode' := Mode,
          'path' := Path,
          'resourceFieldRef' := ResourceFieldRef
        }) ->
    #{ 'fieldRef' => FieldRef,
       'mode' => Mode,
       'path' => Path,
       'resourceFieldRef' => ResourceFieldRef
     }.
