-module(kuberl_v1_persistent_volume_claim_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_persistent_volume_claim_volume_source/0]).

-type kuberl_v1_persistent_volume_claim_volume_source() ::
    #{ 'claimName' := binary(),
       'readOnly' => boolean()
     }.

encode(#{ 'claimName' := ClaimName,
          'readOnly' := ReadOnly
        }) ->
    #{ 'claimName' => ClaimName,
       'readOnly' => ReadOnly
     }.
