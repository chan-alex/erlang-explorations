
- module(explore_modules1).

- export([add1/1, add2/1, add3/1]).
- export([add/1, add/2]).

add1(X) ->
  X + 1.

add2(X) ->
  X + 2.

add3(X) ->
 add1(add2(X)).


%% Note it's possible to have functions to have the same sign if their arguments
%% differ.

add(X) ->
  X.

add(X, Y) ->
  X + Y.

%% explore_modules1:add(10).
%% 10
%% 25> explore_modules1:add(10, 11).
%% 21