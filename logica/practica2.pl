antecesor(hominoidea,hylobatidae).
antecesor(hominoidea,hominidea).
antecesor(hylobatidae,hylobates).
antecesor(hominidea,ponginae).
antecesor(hominidea,homininae).
antecesor(ponginae,pongo).
antecesor(homininae,gorillini).
antecesor(homininae,hominini).
antecesor(hominini,homo).
antecesor(hominini,pan).
antecesor(gorillini,gorilla).

superfamilia(hominoidea).
familia(hominidea).
familia(hylobatidae).
subfamilia(homininae).
subfamilia(ponginae).
tribu(hominini).
tribu(gorillini).
genus(homo).
genus(pan).
genus(gorilla).
genus(pongo).
genus(hylobates).



tio(X,Y):- antecesor(Z,X), antecesor(Z,A), antecesor(A,Y).

% ¿Es el gorila descendiente de hominini? -descendientes(hominini,gorilla).
descendientes(X,Y):- antecesor(X,Y).


% ¿Es el Homo hermano del gorila? -hermano(homo,gorilla).
hermano(X,Y):- antecesor(Z,X), antecesor(Z,Y).


% ¿Son el homo y el gorilla de la misma subfamilia?
% primero averiguamos cual es su subfamilia con abuelo.
abuelo(X,Y):-antecesor(Z,Y),antecesor(X,Z). 
%y ya con el dato abuelo vemos si pertenecen a la misma subfamilia.
primos(X,Y):-abuelo(Z,X),abuelo(Z,Y),not(hermano(X,Y)). %-primos(homo,gorilla).


% Quienes son los descendientes directos de una tribú
descendientes(X,Y):- antecesor(X,Y). %-descendientes('tribu',X).


% ¿Tiene Hominini la misma familia que pongo?
% X=hominini Y=pongo
mismafam(X,Y):- antecesor(Z,X),abuelo(Z,Y).
%este hace lo mismo
tio(X,Y):- antecesor(Z,X), antecesor(Z,A), antecesor(A,Y).

% Lista de generos y regla con variable anonima.
generos(_,X):-antecesor(Y,X).

% Anexar las categorías en una lista.
categorias([hominoidea,hominidea,hylobatidae,homininae,ponginae,hominini,
    gorillini,homo,pan,gorilla,pongo,hylobates]).

%Anexar una pregunta no planteada.
%¿Que genus hay?
genus(X).


