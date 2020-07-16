-module(kuberl_v2beta2_metric_identifier).

-export([encode/1]).

-export_type([kuberl_v2beta2_metric_identifier/0]).

-type kuberl_v2beta2_metric_identifier() ::
    #{ 'name' := binary(),
       'selector' => kuberl_v1_label_selector:kuberl_v1_label_selector()
     }.

encode(#{ 'name' := Name,
          'selector' := Selector
        }) ->
    #{ 'name' => Name,
       'selector' => Selector
     }.
