padre(iswim,sasli).
padre(iswim,ml).
padre(iswim,hope).

padre(sali,krc).

padre(ml,miranda).

padre(hope,miranda).

padre(krc,miranda).

padre(miranda,haskell).

padre(haskell,mondrian).
padre(haskell,haskellmasmas).
padre(haskell,ohaskel).



% ¿Quién es el padre del padre de Haskell? ?-abuelo(X,haskell).
abuelo(X,Y):- padre(Z,Y), padre(X,Z). 
% krc, ml, hope

% ¿Es hijo KRC de C++? 
% ?-padre(Cmasmas,krc).
% false

% ¿Es Mondrian lenguaje hermano de Haskell++? ?-hermano(mondrian,haskellmasmas).
hermano(X,Y):- padre(Z,X), padre(Z,Y).
% true

%Realizar dos hechos correspondientes al diagrama.
%1
hijos(X,Y):-padre(X,Y). %por ejemplo: ?-hijos(iswim,X). X=sasli, ml, hope.
%2
descendientes(_,X):-padre(Y,X). %son todos los descendientes del origen. 
%O no se si se referia a realizar dos hechos a esto:
% ?- padre(X,miranda). X= ml, hope, krc
% ?- padre(iswim, X). X= sasli, ml, hope.

% operacion aritmetica. 

promedio(X,Y,Z,P) :- P is (X+Y+Z)/3.
% ejemplo: ?- promedio(5,3,4,P). P=4



