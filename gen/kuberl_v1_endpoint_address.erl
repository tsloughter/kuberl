-module(kuberl_v1_endpoint_address).

-export([encode/1]).

-export_type([kuberl_v1_endpoint_address/0]).

-type kuberl_v1_endpoint_address() ::
    #{ 'hostname' => binary(),
       'ip' := binary(),
       'nodeName' => binary(),
       'targetRef' => kuberl_v1_object_reference:kuberl_v1_object_reference()
     }.

encode(#{ 'hostname' := Hostname,
          'ip' := Ip,
          'nodeName' := NodeName,
          'targetRef' := TargetRef
        }) ->
    #{ 'hostname' => Hostname,
       'ip' => Ip,
       'nodeName' => NodeName,
       'targetRef' => TargetRef
     }.
