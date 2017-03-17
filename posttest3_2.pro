DOMAINS
kali,jumlah = integer
%untuk menetapkan jenis data pada parameter

PREDICATES
tambahkan(jumlah,jumlah,jumlah)
%jumlah sudah dalam bentuk data integer
kalikan(kali,kali,kali)
%kali sudah dalam bentuk data integer

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y.
%fakta tambahkan, variabel x dan y adalah inputannya, sedangkan jumlah adalah outputnya, tambahkan dapat berjalan jika jumlah samadengan x ditambah y
kalikan(X,Y,Kali):-Kali=X*Y.
%%fakta tambahkan, variabel x dan y adalah inputannya, sedangkan jumlah adalah outputnya, tambahkan dapat berjalan jika jumlah samadengan x dikali y

GOAL
tambahkan(32,54,Jumlah).
%goalnya adalah hasil dari fakta tambah, dimana variabel x di isi dengan 32, dan y di isi dengan 54, sedangkan jumlah adalah hasilnya
