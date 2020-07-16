-module(kuberl_v1_api_service_spec).

-export([encode/1]).

-export_type([kuberl_v1_api_service_spec/0]).

-type kuberl_v1_api_service_spec() ::
    #{ 'caBundle' => kuberl_byte_array:kuberl_byte_array(),
       'group' => binary(),
       'groupPriorityMinimum' := integer(),
       'insecureSkipTLSVerify' => boolean(),
       'service' := kuberl_apiregistration_v1_service_reference:kuberl_apiregistration_v1_service_reference(),
       'version' => binary(),
       'versionPriority' := integer()
     }.

encode(#{ 'caBundle' := CaBundle,
          'group' := Group,
          'groupPriorityMinimum' := GroupPriorityMinimum,
          'insecureSkipTLSVerify' := InsecureSkipTLSVerify,
          'service' := Service,
          'version' := Version,
          'versionPriority' := VersionPriority
        }) ->
    #{ 'caBundle' => CaBundle,
       'group' => Group,
       'groupPriorityMinimum' => GroupPriorityMinimum,
       'insecureSkipTLSVerify' => InsecureSkipTLSVerify,
       'service' => Service,
       'version' => Version,
       'versionPriority' => VersionPriority
     }.
