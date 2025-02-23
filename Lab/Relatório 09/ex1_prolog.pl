
% Respostas das consultas

% a) resultado(joao, X).
% Resposta: X = 8.

% b) falta(X, Y), Y > 0.
% Resposta:
% X = joao, Y = 2;
% X = pedro, Y = 5;
% X = jose, Y = 1.

% c) reprovado(jose).
% Resposta: Falso. Jose não foi reprovado.

% Nova regra
aprovado(X) :-
    resultado(X, Nota),
    Nota > 6,
    falta(X, F),
    F < 2.

% Testes da nova regra:
% Maria: Aprovada (Nota = 7, Faltas = 0).
% Ana: Aprovada (Nota = 9, Faltas = 0).
