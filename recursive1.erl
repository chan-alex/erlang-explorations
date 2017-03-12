
- module(recursive1).
- compile(export_all).



length1([]) -> 0;     % this is require to match empty list case.
length1([_|T]) -> 1 + length(T).

%% 7> recursive1:length1([1,2,3,a,5,g]).
%% 6

%% The above recursion is not tail recursive. A list with a million values
%% will use a lot of memory.

%% To make it tail recursive, need to use accumulator.



tail_length1(L) -> tail_length1(L,0).

tail_length1([],N) -> N;
tail_length1([_|T],N) -> tail_length1(T,N+1).
