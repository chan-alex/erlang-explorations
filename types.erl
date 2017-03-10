
- module(types).
- compile(export_all).

%% Erlang is dynamic typed. Every errors are caught at runtime.
%% Erlang is ok with this as it assumes errors will occur and is designed to handle them.

%% Erlang is also strongly typed - does not do implicit type conversions between terms.


%% Type conversions have to be done by Erlang BIFs:

%% 1> erlang:list_to_integer("123").
%% 123

%% 3> erlang:integer_to_list(456).
%% "456"

%% 4> erlang:list_to_float("3.147").
%% 3.147

%% 5> erlang:float_to_list(3.147).
%% "3.14699999999999979750e+00"



%% There are also BIFs that test if the arguments is of an certain type

%% 6> is_float(4.147).
%% true

%% 7> is_list([a,1,3]).
%% true

%% 8> is_tuple({"ab", 5, 6}).
%% true

% these functions can be used in guard expressions.

test_type(X) 
  when is_float(X) -> io:format("It's a float! ~n");

test_type(X) 
  when is_list(X) -> io:format("It's a string ~n").