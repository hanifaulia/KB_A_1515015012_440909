PREDICATES
nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
nondeterm suka(symbol, symbol)
dijual(symbol)

CLAUSES
dapat_membeli(X,Y):-
orang(X), mobil(Y), suka(X,Y), dijual(Y).
%disini dikatakan bahwa x dapat membeli y, jika x adalah orang, y adalah mobil, x menyukai y, dan y dijual

orang(nur).	orang(yudi).	orang(dian).	orang(heni).
%sedangkan di atas adalah para orang

mobil(atoz).	mobil(kijang).
%di atas adalah para mobil

suka(dian, atoz).	suka(yudi, pecel).
suka(heri, buku).	suka(nur, komputer).
% di atas adalah kesukaan orang - orang, dapat disimpulkan hanya dian yang suka mobil

dijual(kijang).		dijual(atoz).	dijual(buku).
% di atas merupakan barang yang dijual, di antaranya terdapat 2 mobil dan 1 buku

GOAL
%dapat_membeli(Siapa,Apa).
% goal pertama, akan memanggil fakta dapat_membeli, karna yang yang menyukai mobil hanya dian, dan kebetulan mobil atoz yang disukai dian dijual, maka dian dapat membelinya

%suka(_,Apa).
%goal kedua, untuk melihat apa saja yang disukai  orang - orang

%suka(Siapa,_).
%goal kedua, untuk melihat siapa saja yang menyukai sesuatu

%dapat_membeli(_,Apa).
%goal ini sama seperti goal pertama, namun siapa yang dapat membelinya tidak ditampilkan

dapat_membeli(Siapa,_).
%goal ini sama seperti goal pertama, namun apa yang dapat dibeli tidak ditampilkan