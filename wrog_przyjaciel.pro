% Enemy of my enemy is my friend
% The facts depicts political situation just before WWII
% I'm sorry for use the Polish names, translation below
% wrog - the enemy
% przyjaciel - the friend

start :-
    X = rosja,
    setof([X,Y],przyjaciel(X,Y),L),
    write(L), nl.

wrog(niemcy,polska).
wrog(niemcy,francja).
wrog(polska,rosja).
wrog(polska,czechoslowacja).
wrog(czechoslowacja,wegry).
wrog(czechoslowacja,niemcy).

przyjaciel(C,P):-
    ((wrog(C,_), wrog(_,P)) ; (wrog(_,C), wrog(P,_))),
    C \== P,
    not(wrog(C,P)), 
    not(wrog(P,C)).
