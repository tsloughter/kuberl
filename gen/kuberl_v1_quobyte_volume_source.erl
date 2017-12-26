-module(kuberl_v1_quobyte_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_quobyte_volume_source/0]).

-type kuberl_v1_quobyte_volume_source() ::
    #{ 'group' => binary(),
       'readOnly' => boolean(),
       'registry' := binary(),
       'user' => binary(),
       'volume' := binary()
     }.

encode(#{ 'group' := Group,
          'readOnly' := ReadOnly,
          'registry' := Registry,
          'user' := User,
          'volume' := Volume
        }) ->
    #{ 'group' => Group,
       'readOnly' => ReadOnly,
       'registry' => Registry,
       'user' => User,
       'volume' => Volume
     }.
