-module(kuberl_v1_git_repo_volume_source).

-export([encode/1]).

-export_type([kuberl_v1_git_repo_volume_source/0]).

-type kuberl_v1_git_repo_volume_source() ::
    #{ 'directory' => binary(),
       'repository' := binary(),
       'revision' => binary()
     }.

encode(#{ 'directory' := Directory,
          'repository' := Repository,
          'revision' := Revision
        }) ->
    #{ 'directory' => Directory,
       'repository' => Repository,
       'revision' => Revision
     }.
