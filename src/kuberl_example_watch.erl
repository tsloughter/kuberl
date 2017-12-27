-module(kuberl_example_watch).

-behaviour(kuberl_watch).

-export([example/0,
         init/1,
         handle_event/3,
         terminate/2]).

example() ->
    kuberl_watch:start_link(?MODULE, kuberl_core_v1_api, list_pod_for_all_namespaces, [ctx:background()], #{}, []).

init([]) ->
    {ok, []}.

handle_event(added, #{metadata := #{name := Name}}, State) ->
    io:format("Added : ~p~n", [Name]),
    {ok, State};
handle_event(deleted, #{metadata := #{name := Name}}, State) ->
    io:format("Deleted : ~p~n", [Name]),
    {ok, State};
handle_event(modified, #{metadata := #{name := Name}}, State) ->
    io:format("Modified : ~p~n", [Name]),
    {ok, State};
handle_event(error, #{message := Message}, State) ->
    io:format("Error : ~p~n", [Message]),
    {ok, State}.

terminate(Reason, _State) ->
    io:format("Terminating : ~p~n", [Reason]),
    ok.
