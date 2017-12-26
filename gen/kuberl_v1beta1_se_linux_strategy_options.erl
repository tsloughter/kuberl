-module(kuberl_v1beta1_se_linux_strategy_options).

-export([encode/1]).

-export_type([kuberl_v1beta1_se_linux_strategy_options/0]).

-type kuberl_v1beta1_se_linux_strategy_options() ::
    #{ 'rule' := binary(),
       'seLinuxOptions' => kuberl_v1_se_linux_options:kuberl_v1_se_linux_options()
     }.

encode(#{ 'rule' := Rule,
          'seLinuxOptions' := SeLinuxOptions
        }) ->
    #{ 'rule' => Rule,
       'seLinuxOptions' => SeLinuxOptions
     }.
