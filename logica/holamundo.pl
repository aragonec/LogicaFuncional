valioso(oro).
valioso(cobre).
es_libro(cienanios).

progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).
hombre(jose).
hombre(tomas).
hombre(jaime).
mujer(clara).
mujer(isabel).
mujer(ana).
mujer(patricia).

%tia
tia(X,Y):- progenitor(Z,X), progenitor(Z,A), progenitor(A,Y), mujer(X).
%abuela
abuela(X,Y):-progenitor(Z,Y),progenitor(X,Z), mujer(X).