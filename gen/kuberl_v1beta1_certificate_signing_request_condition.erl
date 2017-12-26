-module(kuberl_v1beta1_certificate_signing_request_condition).

-export([encode/1]).

-export_type([kuberl_v1beta1_certificate_signing_request_condition/0]).

-type kuberl_v1beta1_certificate_signing_request_condition() ::
    #{ 'lastUpdateTime' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'reason' => binary(),
       'type' := binary()
     }.

encode(#{ 'lastUpdateTime' := LastUpdateTime,
          'message' := Message,
          'reason' := Reason,
          'type' := Type
        }) ->
    #{ 'lastUpdateTime' => LastUpdateTime,
       'message' => Message,
       'reason' => Reason,
       'type' => Type
     }.
