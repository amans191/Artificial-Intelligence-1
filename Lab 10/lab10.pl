increment(X,Y) :- Y is (X+1).

%ask vardy%
signum(X,Y) :- X>0, Y is (X-1); Y is 0.

max_two_number(X,Y,X) :- X>Y. 
max_two_number(X,Y,Y) :- Y>=X. 

max_of_three(X,Y,Z,W) :- max_of_two(X,Y,G),max_of_two(Z,G,K),W is K.

absolute(X,Y) :- -X>=0, Y is X.
absolute(X,Y) :- -Y is X * -1.