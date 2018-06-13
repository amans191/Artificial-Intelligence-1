isa(sam, seal).
isa(bob, penguin).
isa(opus, penguin).
isa(tweety, canary).
isa(ken, canary).

isa(seal, seacreature).
isa(penguin, seacreature).
isa(penguin, bird).
isa(canary, bird).


hasfeature(seacreature, swims).
hasfeature(penguin, walks).
hasfeature(canary, flys).
hasfeature(bird, feathers).
hasfeature(bird, wings).


same_species(X, Y) :- isa(X, Z), isa(Y, Z).


same_class(X, Y) :- same_species(X, Y).
same_class(X, Y) :- isa(X, Z), same_species(Z, Y).
same_class(X, Y) :- isa(X, Z), isa(Y, J), same_species(Z, J).


has_property(X, Y) :- hasfeature(X, Y).
has_property(X, Y) :- isa(X, Z), has_property(Z, Y).