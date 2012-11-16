-module(recursion).
-export([zip/2, lenient_zip/2]).


% Zips two lists of equal length into a list of two
% element tuples.
% Turned non-tail recursive code from website into
% tail-recursive version.
zip(X,Y) -> zip(X,Y,[]).
zip([],[],Acc) -> lists:reverse(Acc);
zip([X|Xs],[Y|Ys],Acc) -> zip(Xs,Ys,[{X,Y}|Acc]).


% Zips two lists of variable length into a list of
% two element tuples.
% Turned non-tail recursive code from website into
% tail-recursive version.
lenient_zip(X,Y) -> lenient_zip(X,Y,[]).
lenient_zip([],_,Acc) -> lists:reverse(Acc);
lenient_zip(_,[],Acc) -> lists:reverse(Acc);
lenient_zip([X|Xs],[Y|Ys],Acc) -> lenient_zip(Xs,Ys,[{X,Y}|Acc]).
