conecta(a, b, 3).
conecta(a, c, 4).
conecta(b, d, 2).
conecta(c, d, 4).
conecta(c, f, 5).
conecta(d, e, 2).
conecta(e, f, 2).

caminho(X,Y,K) :- conecta(X,Y,K).
caminho(X,Y,K) :- conecta(X, Z, K1), caminho(Z, Y, K2), K is K1 + K2.