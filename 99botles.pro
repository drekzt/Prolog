% 99 bottles of beer.
% Remko Troncon <spike@kotnet.org>
% Modified by <drekzt>

start :-
    bottles(99).

bottles(1) :- 
    write('jedna butelka piwa na barze, jedna butelka piwa,'), nl,
    whattodo,
    write('Teraz nie ma już żadnej.'), nl,!.
bottles(X) :-
    pluralform('butel',X,Z),
    write(X), write(' '), write(Z), write(' piwa na barze.'), nl,
    write(X), write(' '), write(Z), write(' piwa na barze,'), nl,
    whattodo,
    NX is X - 1,
    bottles(NX).

whattodo :-
    write('podaj ją nam,'), nl.

pluralform(B,1,B1) :-
    string_concat(B,'ka',B1).
pluralform(B,C,B1) :-
    M is mod(C,10),
    ( member(M,[1,5,6,7,8,9,0]) ; member(C,[12,13,14]) ),
    string_concat(B,'ek',B1).
pluralform(B,_,B1) :-
    string_concat(B,'ki',B1).
