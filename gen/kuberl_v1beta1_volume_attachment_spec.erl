-module(kuberl_v1beta1_volume_attachment_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_volume_attachment_spec/0]).

-type kuberl_v1beta1_volume_attachment_spec() ::
    #{ 'attacher' := binary(),
       'nodeName' := binary(),
       'source' := kuberl_v1beta1_volume_attachment_source:kuberl_v1beta1_volume_attachment_source()
     }.

encode(#{ 'attacher' := Attacher,
          'nodeName' := NodeName,
          'source' := Source
        }) ->
    #{ 'attacher' => Attacher,
       'nodeName' => NodeName,
       'source' => Source
     }.
