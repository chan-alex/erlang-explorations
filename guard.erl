
- module(guard).

- compile(export_all).


% Guards are additional clause add to a function's head to make pattern
% matching more expressive.

valid_24hours(H) when H >= 0, H =< 24 ->
  true;

valid_24hours(_) ->
  false.

% In guards expressions,
% The "," operator is similar to the "andalso" operator.
% The ";" operator is similar to the "orelse" operator.


invalid_24hours(H) when H < 1; H > 24 ->
  true;

invalid_24hours(_) ->
  false.

% The difference between "," and ";" is that the 1st will
% will catch exception while the latter will not.
% If the 1st part of a ";" throws an error, the 2nd part will be evaluted.

% The "," and ";" can also be nested in guards.
% Note: Erlang guards do not accept user defined functions because of side effects.


% Guard patterns
% The "if" keywords is not like other languages "if".
% In Erlang, "if" clauses are called guard patterns.
% Unlike noraml guards, guard patterns are defined outside a function's head.

test_if1() ->
  if 2 =:= 2 ->
     it_ok
  end,   % note the comma
  
  if 5 =:= 5; 4 =:= 4 ->
     it_also_ok
  end,   % note the comma

  % If the below guard pattern is added, erlang will warn you because it is
  % able to determine that no clause will ever match.

  if 3 =:= 4 ->
     it_not_ok
  end.   

  % Trying to execute the function will cause an error. 
  %  12> guard:test_if1().
  %   ** exception error: no true branch found when evaluating an if expression
  %     in function  guard:test_if1/0 (guard.erl, line 51)

  % This error occurs because in Erlang, every expression must evaluate to something.
  % For test_if1(), Erlang is not able to have the guards succeed, so it will crash.




test_if2(N) ->

 if N < 10 ->
    it_ok
  end.

% The above function will give an error if N > 10.

% 13> guard:test_if2(5).
% it_ok
% 14> guard:test_if2(10).
% ** exception error: no true branch found when evaluating an if expression
%     in function  guard:test_if2/1 (guard.erl, line 67)

% it needs an "else".

test_if3(N) ->

 if N < 10 ->
    it_ok;
  true ->
    it_also_ok
  end.  


% 18> guard:test_if3(5).
% it_ok
% 19> guard:test_if3(10).
% it_also_ok



say_i_am(What) ->

  What_i_am = if What == kettle  -> "Kettle";
                 What == orange  -> "Orange";
                 What == dog     -> "Dog";
                 What == cabbage -> "Cabbage";
                 true ->  "??????"
              end,
  { "I am a " ++ What_i_am ++ "!"}.

% 22> guard:say_i_am(kettle).
% {"I am a Kettle!"}
% 23> guard:say_i_am(orange).
% {"I am a Orange!"}
% 24> guard:say_i_am(banana).
% {"I am a ??????!"}


test_case1(S) ->
  case S of
     true  -> "It is true";
     false -> "It is false";
     _ -> "Something else"
  end.


% 28> guard:test_case1(true).
% "It is true"
% 29> guard:test_case1(false).
% "It is false"
% 30> guard:test_case1(fat).
% "Something else"
    