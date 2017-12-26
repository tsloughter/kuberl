-module(kuberl_v1_component_condition).

-export([encode/1]).

-export_type([kuberl_v1_component_condition/0]).

-type kuberl_v1_component_condition() ::
    #{ 'error' => binary(),
       'message' => binary(),
       'status' := binary(),
       'type' := binary()
     }.

encode(#{ 'error' := Error,
          'message' := Message,
          'status' := Status,
          'type' := Type
        }) ->
    #{ 'error' => Error,
       'message' => Message,
       'status' => Status,
       'type' => Type
     }.
