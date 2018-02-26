-module(kuberl_v1alpha1_volume_attachment_status).

-export([encode/1]).

-export_type([kuberl_v1alpha1_volume_attachment_status/0]).

-type kuberl_v1alpha1_volume_attachment_status() ::
    #{ 'attachError' => kuberl_v1alpha1_volume_error:kuberl_v1alpha1_volume_error(),
       'attached' := boolean(),
       'attachmentMetadata' => maps:map(),
       'detachError' => kuberl_v1alpha1_volume_error:kuberl_v1alpha1_volume_error()
     }.

encode(#{ 'attachError' := AttachError,
          'attached' := Attached,
          'attachmentMetadata' := AttachmentMetadata,
          'detachError' := DetachError
        }) ->
    #{ 'attachError' => AttachError,
       'attached' => Attached,
       'attachmentMetadata' => AttachmentMetadata,
       'detachError' => DetachError
     }.
