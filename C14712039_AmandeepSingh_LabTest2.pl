%%Question 1
%% Part A
connected(a,b,10).
connected(b,c,5).
connected(b,d,5).
connected(f,e,15).
connected(e,d,10).
connected(d,g,5).
connected(g,h,10).
connected(g,i,15).

%%Part B
conc([],L,L).
conc([X|L1],L2,[X|L3]) :- conc(L1,L2,L3).

route(X,Y,Z) :- connected(X,Y,_), Z = [X,Y].
route(X,Y,Z) :- connected(X,Q,_), route(Q,Y,T), conc([X],T,Z).

%%Part C
distance(X,Y,Z) :- connected(X,Y,Z).
distance(X,Y,Z) :- connected(X,Q,Z1), distance(Q,Y,Z2), Z is Z1 + Z2.

%%Question 2

fn(X,Y) :- X = 0, Y is 1.
fn(X,Y) :- X < 0, Z is (X+1), fn(Z,S), Y is X * S.
fn(X,Y) :- X > 0, Z is (X-1), fn(Z,S), Y is X * S.