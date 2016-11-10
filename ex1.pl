progenitor(maria, joao).
progenitor(jose,  joao).

progenitor(maria, ana).
progenitor(jose,  ana).

progenitor(ana,  helena).
progenitor(ana,  joana).

progenitor(joao, mario).

progenitor(helena, carlos).
progenitor(mario,  carlos).

m(joao).
m(jose).
m(mario).
m(carlos).

f(maria).
f(ana).
f(helena).
f(joana).

pai(X,Y) :- progenitor(X,Y), m(X).
mae(X,Y) :- progenitor(X,Y), f(X).

irmao(X,Y) :- m(X), pai(Z,X), pai(Z,Y).
irmao(X,Y) :- m(X), mae(Z,X), mae(Z,Y).

irma(X,Y)  :- f(X), pai(Z,X), pai(Z,Y).
irma(X,Y)  :- f(X), mae(Z,X), mae(Z,Y).

avo(X,Y) :- progenitor(X, Z), progenitor(Z, Y).

primo(X,Y) :- progenitor(Z, X), progenitor(W,Y), progenitor(K, Z), progenitor(K, W).

tio(X,Y) :- progenitor(Z, Y), progenitor(K, Z), progenitor(K,X).


