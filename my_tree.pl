/* Lado da mae */
progenitor(melque, auxiliadora).
progenitor(ester, auxiliadora).
progenitor(manoel, glicia).
progenitor(auxiliadora, glicia).
progenitor(manoel, clodoaldo).
progenitor(auxiliadora, clodoaldo).
progenitor(manoel, cleomacio).
progenitor(auxiliadora, cleomacio).
progenitor(manoel, glisbenia).
progenitor(auxiliadora, glisbenia).

/* Lado do pai */
progenitor(batista, joao).
progenitor(maria, joao).
progenitor(joao, mauro).
progenitor(ioneida, mauro).
progenitor(joao, jonas).
progenitor(ioneida, jonas).
progenitor(joao, claudio).
progenitor(ioneida, claudio).
progenitor(joao, edilma).
progenitor(ioneida, edilma).

/* Geracao */
progenitor(mauro, victor).
progenitor(glicia, victor).
progenitor(mauro, glenda).
progenitor(glicia, glenda).

progenitor(mauro, pedro).

progenitor(cleomacio, amanda).
progenitor(socorro, amanda).
progenitor(jonas, marcia).
progenitor(sandra, marcia).

sexo(melque, m).
sexo(ester, f).
sexo(manoel, m).
sexo(auxiliadora, f).
sexo(clodoaldo, m).
sexo(glisbenia, f).
sexo(cleomacio, m).
sexo(batista, m).
sexo(maria, f).
sexo(joao, m).
sexo(ioneida, f).
sexo(glicia, f).
sexo(mauro, m).
sexo(jonas, m).
sexo(edilma, f).
sexo(claudio, m).
sexo(victor, m).
sexo(glenda, f).
sexo(amanda, f).
sexo(sandra, f).
sexo(marcia, f).
sexo(socorro, f).
sexo(pedro, m).

antepassado(X,Y) :- progenitor(X,Y).

antepassado(X,Y) :- progenitor(X,Z), 
					antepassado(Z,Y).

pai(X,Y) :- progenitor(X,Y), 
            sexo(X, m).

mae(X,Y) :- progenitor(X,Y), 
            sexo(X, f).

irmao(X,Y) :- sexo(X, m), 
              progenitor(Z,X), 
              progenitor(Z,Y), 
              not(X = Y).

irma(X,Y)  :- sexo(X, f), 
              progenitor(Z,X), 
              progenitor(Z,Y), 
              not(X = Y).

avo(X,Y) :- progenitor(X,Z), progenitor(Z,Y).

bisavo(X,Y) :- avo(X, Z), progenitor(Z, Y).

primo(X,Y) :- progenitor(V, Z), progenitor(V, W), progenitor(Z, X), progenitor(W, Y).