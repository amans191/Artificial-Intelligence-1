sits_right_of( dennisCreevey,deanThomas).
sits_right_of( leeJordan, dennisCreevey).
sits_right_of( georgeWeasley, leeJordan).
sits_right_of( fredWeasley, georgeWeasley).
sits_right_of( aliciaSpinnet, fredWeasley).
sits_right_of( nevilleLongbottom, aliciaSpinnet).
sits_right_of( lavenderBrown, nevilleLongbottom).
sits_right_of( parvatiPatel, lavenderBrown).
sits_right_of( katieBell, parvatiPatel).
sits_right_of( natalieMcDonald, katieBell).
sits_right_of( ronWeasley, natalieMcDonald).
sits_right_of( hermioneGranger, ronWeasley).
sits_right_of( harryPotter, hermioneGranger).
sits_right_of( colinCreevey, harryPotter).
sits_right_of( seamusFinnigan, colinCreevey).
sits_right_of( angelinaJohnson, seamusFinnigan).
sits_right_of( ginnyWeasley, angelinaJohnson).
sits_right_of( deanThomas, ginnyWeasley).

sits_left_of(X,Y) :- sits_right_of(Y,X).

are_neighbours_of(X,Y,Z) :- sits_right_of(X,Y), sits_left_of(X,Z).

two_seats_right(X,Y,Z) :- sits_right_of(X,Y), sits_right_of(Y,Z).
