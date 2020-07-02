-module(kuberl_v1beta1_lease_spec).

-export([encode/1]).

-export_type([kuberl_v1beta1_lease_spec/0]).

-type kuberl_v1beta1_lease_spec() ::
    #{ 'acquireTime' => kuberl_date_time:kuberl_date_time(),
       'holderIdentity' => binary(),
       'leaseDurationSeconds' => integer(),
       'leaseTransitions' => integer(),
       'renewTime' => kuberl_date_time:kuberl_date_time()
     }.

encode(#{ 'acquireTime' := AcquireTime,
          'holderIdentity' := HolderIdentity,
          'leaseDurationSeconds' := LeaseDurationSeconds,
          'leaseTransitions' := LeaseTransitions,
          'renewTime' := RenewTime
        }) ->
    #{ 'acquireTime' => AcquireTime,
       'holderIdentity' => HolderIdentity,
       'leaseDurationSeconds' => LeaseDurationSeconds,
       'leaseTransitions' => LeaseTransitions,
       'renewTime' => RenewTime
     }.
