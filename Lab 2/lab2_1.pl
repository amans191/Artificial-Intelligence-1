wizard(hary).
scare(hagrid,dudley).
magic(X) :- wizard(X).
hate(uncle_vernon,X) :- magic(X).
hate(aunt_petunia,X) :- magic(X);scare(X,dudley).