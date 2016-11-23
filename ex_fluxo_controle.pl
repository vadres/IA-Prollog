% Q2 - 

% fat(X,1) :- X < 1, !.
% fat(X,F) :- fat(X - 1, F1), F is F1 * X.

/** 
 * R = é necessario por que senão ficara pra sempre em uma multiplicação por zero.
 *     o corte é vermelho.  
 */ 

/**
 *  Usando corte verde:
 */

fat(0, 1) :- !.
fat(X,F) :- fat(X - 1, F1), F is F1 * X.

% Q3 -

max(X,Y,M) :- X > Y, M = X.
max(X,Y,M) :- X =< Y, M = Y.

/** 
 * R = o cortar faz com que o programa pule a segunda execução.  
 */ 

% Q4 -

wN(0) :- write(0), !.
wN(N) :- write(N), N1 is N - 1, wN(N1), write(N).

piramideVal(N, X) :- X > N, !.
piramideVal(N, X) :- wN(X), nl, X1 is X + 1, piramideVal(N, X1).

piramide(N) :- piramideVal(N, 0). 