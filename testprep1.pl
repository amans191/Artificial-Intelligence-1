haspart(worldhq,chinahq).
haspart(worldhq,irelandhq).
haspart(chinahq,chinasales).
haspart(chinahq, chinafinance).
haspart(irelandhq,irelandsales).
haspart(irelandhq,irelandfinance).

head(bob,worldhq).
head(zhi,chinahq).
head(mary,irelandhq).
head(hui,chinasales).
head(ya,chinafinance).
head(neil,irelandsales).
head(karen,irelandfinance).

employee(john,worldhq).
employee(wen,chinahq).
employee(brian,irelandhq).
employee(hong,chinasales).
employee(ming,chinafinance).
employee(michael,irelandsales).
employee(alan,irelandfinance).

indepartment(X,Y) :- head(X,Y);employee(X,Y).

colleagues(X,Y) :- head(X,Z), employee(Y,Z); head(Y,Z), employee(X,Z), dif(X,Y).

component(X,Y) :- haspart(X,Y).
component(X,Y) :- haspart(X,Z), component(Z,Y).

memberof(X,Y) :- head(X,Y);employee(X,Y);component(X,Y).
memberof(X,Y):- (head(X,Z);employee(X,Z);component(X,Z)),memberof(Y,Z).

bossof(X,Y) :- head(X,Z),memberof(Y,Z),dif(X,Y).