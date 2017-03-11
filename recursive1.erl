
- module(recursive1).
- compile(export_all).



length1([]) -> 0.  % this is require to match empty list case.
length1([_|T]) -> 1 + length(T).

% 7> recursive1:length1([1,2,3,a,5,g]).
% 6