
- module(pattern_matching1).

- compile(export_all).

%% Because of pattern matching, there is no if...else... block in erlang.



say_hello(male, Name) ->
  io:format("Hello, Mr ~s! ~n", [Name]);  %% Note the ";" at the end.
  
say_hello(female, Name) ->
  io:format("Hello, Ms ~s! ~n", [Name]);  %% Note the ";"

say_hello(_, Name) ->                     %% This is necessarily.
  io:format("Hello, ~s! ~n", [Name]).     %% Note the "."


%% The above is the equivalent of something like:
%% 
%% function say_hello(gender, Name):
%%
%%  if gender == male
%%     print "...."
%%
%%  else if gender == female
%%     print "...."
%% 
%%  else
%%     print

%% Function clauses are seperated by ";"
%% final function ends with "."



%% Pattern matching lists.

head([H|_]) -> H.
second([_,X|_]) -> X.
tail([_|T]) -> T.


%% 19> pattern_matching1:head([1,2,3,4,5]).
%% 1
%% 20> pattern_matching1:tail([1,2,3,4,5]).
%% [2,3,4,5]
%% 67> pattern_matching1:second([1,2,3,4,5]).
%% 2
