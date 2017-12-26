-module(kuberl_v1_resource_quota_status).

-export([encode/1]).

-export_type([kuberl_v1_resource_quota_status/0]).

-type kuberl_v1_resource_quota_status() ::
    #{ 'hard' => maps:map(),
       'used' => maps:map()
     }.

encode(#{ 'hard' := Hard,
          'used' := Used
        }) ->
    #{ 'hard' => Hard,
       'used' => Used
     }.
