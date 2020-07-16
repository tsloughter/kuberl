-module(kuberl_v1_container_status).

-export([encode/1]).

-export_type([kuberl_v1_container_status/0]).

-type kuberl_v1_container_status() ::
    #{ 'containerID' => binary(),
       'image' := binary(),
       'imageID' := binary(),
       'lastState' => kuberl_v1_container_state:kuberl_v1_container_state(),
       'name' := binary(),
       'ready' := boolean(),
       'restartCount' := integer(),
       'started' => boolean(),
       'state' => kuberl_v1_container_state:kuberl_v1_container_state()
     }.

encode(#{ 'containerID' := ContainerID,
          'image' := Image,
          'imageID' := ImageID,
          'lastState' := LastState,
          'name' := Name,
          'ready' := Ready,
          'restartCount' := RestartCount,
          'started' := Started,
          'state' := State
        }) ->
    #{ 'containerID' => ContainerID,
       'image' => Image,
       'imageID' => ImageID,
       'lastState' => LastState,
       'name' => Name,
       'ready' => Ready,
       'restartCount' => RestartCount,
       'started' => Started,
       'state' => State
     }.
