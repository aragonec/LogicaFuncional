superior(mark,sheryl).
superior(mark,david).
superior(mark,timothy).
superior(mark,mike).
superior(mark,elliot).
superior(mark,lori).
superior(elliot,rebecca).
superior(elliot,heather).

%para saber quien es el jefe de rebbeca se correria -superior(X,rebecca).

jefedeljefe(X,Y):- superior(Z,Y), superior(X,Z).
%para saber si mark es el jefe del jefe de rebeccca sin 
%necesitar saber quien es el jefe directo de rebecca es: -jefe(mark,rebecca).

%para saber si lori es jefe de alguien seria -superior(lori,X).

%para mostrar empleados del jefe de heather es con la siguiente logica:
coworkers(X,Y):- superior(Z,X), superior(Z,Y). %-coworkers(heather,X).
%ese mismo codigo se utiliza para saber los compañeros de mike -coworkers(mike,X).
%tambien se utiliza para saber si lori es compañero de nivel de mike -coworkers(mike,lori).

%timothy es jefe de rebecca?? -superior(timothy,rebecca). false.

%¿Es el jefe de Rebecca compañero de nivel de David?
compajefe(X,Y):- superior(Z,Y), coworkers(X,Z). %-compajefe(david,rebecca).








