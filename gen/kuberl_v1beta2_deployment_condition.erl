-module(kuberl_v1beta2_deployment_condition).

-export([encode/1]).

-export_type([kuberl_v1beta2_deployment_condition/0]).

-type kuberl_v1beta2_deployment_condition() ::
    #{ 'lastTransitionTime' => kuberl_date_time:kuberl_date_time(),
       'lastUpdateTime' => kuberl_date_time:kuberl_date_time(),
       'message' => binary(),
       'reason' => binary(),
       'status' := binary(),
       'type' := binary()
     }.

encode(#{ 'lastTransitionTime' := LastTransitionTime,
          'lastUpdateTime' := LastUpdateTime,
          'message' := Message,
          'reason' := Reason,
          'status' := Status,
          'type' := Type
        }) ->
    #{ 'lastTransitionTime' => LastTransitionTime,
       'lastUpdateTime' => LastUpdateTime,
       'message' => Message,
       'reason' => Reason,
       'status' => Status,
       'type' => Type
     }.
