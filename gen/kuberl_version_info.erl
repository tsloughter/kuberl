-module(kuberl_version_info).

-export([encode/1]).

-export_type([kuberl_version_info/0]).

-type kuberl_version_info() ::
    #{ 'buildDate' := binary(),
       'compiler' := binary(),
       'gitCommit' := binary(),
       'gitTreeState' := binary(),
       'gitVersion' := binary(),
       'goVersion' := binary(),
       'major' := binary(),
       'minor' := binary(),
       'platform' := binary()
     }.

encode(#{ 'buildDate' := BuildDate,
          'compiler' := Compiler,
          'gitCommit' := GitCommit,
          'gitTreeState' := GitTreeState,
          'gitVersion' := GitVersion,
          'goVersion' := GoVersion,
          'major' := Major,
          'minor' := Minor,
          'platform' := Platform
        }) ->
    #{ 'buildDate' => BuildDate,
       'compiler' => Compiler,
       'gitCommit' => GitCommit,
       'gitTreeState' => GitTreeState,
       'gitVersion' => GitVersion,
       'goVersion' => GoVersion,
       'major' => Major,
       'minor' => Minor,
       'platform' => Platform
     }.
