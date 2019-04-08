progenitor(maria, pedro).
progenitor(joao, pedro).
progenitor(bianca, ana).
progenitor(marcelo, ana).
progenitor(pedro, amanda).
progenitor(ana, amanda).

m(pedro).
m(joao).
m(marcelo).
f(ana).
f(maria).
f(amanda).
f(bianca).

pai(X, Y) :- progenitor(X, Y), m(X).
mae(X, Y) :- progenitor(X, Y), f(X).