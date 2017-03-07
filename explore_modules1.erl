
- module(explore_modules1).

- export([add1/1, add2/1, add3/1]).
- export([add/1, add/2]).
- export([circle_area/1]).
- export([add1_v2/1]).


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

%% Macros

%% - define() is used to defined macros.
%% Macros can be used anywhere within the module.
%% To refer to an macro, prefix with a "?"

- define(Pi,3.14).  % imprecise PI

circle_area(R) ->
  ?Pi * R * R.


%% It is possible to define a "function" macro.

- define(plus_one(X), X + 1).

add1_v2(X) -> ?plus_one(X).


%% It is posible to check if a particular macro has been defined in the module with
%% - ifdef()


%% The below function will be compiled only if the TEST macro was defined.
%% Can be defined via compiler options e.g:
%%
%%   c(explore_modules1, [{d, 'TEST'}]).
%% 

- ifdef(TEST).

test1() ->
  io:format("TEST macro is defined. ~n").

- endif.

