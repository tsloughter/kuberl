-module(kuberl_v1_status).

-export([encode/1]).

-export_type([kuberl_v1_status/0]).

-type kuberl_v1_status() ::
    #{ 'apiVersion' => binary(),
       'code' => integer(),
       'details' => kuberl_v1_status_details:kuberl_v1_status_details(),
       'kind' => binary(),
       'message' => binary(),
       'metadata' => kuberl_v1_list_meta:kuberl_v1_list_meta(),
       'reason' => binary(),
       'status' => binary()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'code' := Code,
          'details' := Details,
          'kind' := Kind,
          'message' := Message,
          'metadata' := Metadata,
          'reason' := Reason,
          'status' := Status
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'code' => Code,
       'details' => Details,
       'kind' => Kind,
       'message' => Message,
       'metadata' => Metadata,
       'reason' => Reason,
       'status' => Status
     }.
