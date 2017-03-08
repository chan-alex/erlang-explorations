
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
%