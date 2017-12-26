-module(kuberl_v1beta1_id_range).

-export([encode/1]).

-export_type([kuberl_v1beta1_id_range/0]).

-type kuberl_v1beta1_id_range() ::
    #{ 'max' := integer(),
       'min' := integer()
     }.

encode(#{ 'max' := Max,
          'min' := Min
        }) ->
    #{ 'max' => Max,
       'min' => Min
     }.
