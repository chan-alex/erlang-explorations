
%% A very simple module which contains one function that prints out hello.

%% Name of the module
-module(hello).

%% This is function that's exported.
-export([hello/0]).

hello() ->
  io:format("Hello there from Erlang!~n").


%% What it looks like from the erlang shell.

%% 1> hello:hello().
%% Hello there!
%% ok
%% 2> hello:module_info().
%% [{module,hello},
%%  {exports,[{hello,0},{module_info,0},{module_info,1}]},
%%  {attributes,[{vsn,[185366652848419372385836968585197144637]}]},
%%  {compile,[{options,[{outdir,"/Users/alexchan/git/erlang-explorations"}]},
%%            {version,"7.0.3"},
%%            {source,"/Users/alexchan/git/erlang-explorations/hello.erl"}]},
%%  {native,false},
%%  {md5,<<139,116,81,153,5,75,247,253,33,167,8,90,169,186,
%%         74,61>>}]
%% 3> 

%% To compile this in interactive shell:
%% cd("/to/where/the/module/is/")
%%  c(hello).
%% {ok,hello}

%% To compile at the the command line:
%%  erlc some_flags source_file