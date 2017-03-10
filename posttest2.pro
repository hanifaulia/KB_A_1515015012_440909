predicates
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
nondeterm adik(STRING,SYMBOL)
nondeterm usia(STRING,SYMBOL)

CLAUSES
anak("Jhon","James").
anak("James","Peter").
anak("Sue","Ann").

istri("Mary","Peter").
istri("Ann","James").

pria("Jhon").
pria("James").
pria("Peter").

wanita("Mary").
wanita("Sue").
wanita("Ann").

usia("Jhon","10").
usia("Sue","13").

ayah(X,Y):-
	anak(Y,X).
kakek(X,Y):-
	ayah(X,Q),ayah(Q,Y).
ibu(X,Y):-
	istri(Y,Q),anak(X,V).
cucu(X,Y):-
	anak(X,Q),istri(Q,V),anak(V,Y).
adik(X,Y):-
	usia(X,Q),usia(Y,V),Q<V.


Goal
cucu(Pertama,Kedua).