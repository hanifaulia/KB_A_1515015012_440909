DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol
umur=integer
PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan)
nondeterm selingkuh(nama, nama)
terbunuh_dengan(nama, benda)
terbunuh(nama)
nondeterm pembunuh(nama)
motif(alasan)
ternodai(nama, zat)
milik(nama, benda)
nondeterm cara_kerja_mirip(benda, benda)
nondeterm kemungkinan_milik(nama, benda)
nondeterm dicurigai(nama)
/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES
orang(budi,55,m,tukang_kayu).
orang(aldi,25,m,pemain_sepak_bola).
orang(aldi,25,m,tukang_jagal).
orang(joni,25,m,pencopet).
selingkuh(ina,joni).
selingkuh(ina,budi).
selingkuh(siti,joni).
terbunuh_dengan(siti,pentungan).
terbunuh(siti).
motif(uang).
motif(cemburu).
motif(dendam).
ternodai(budi, darah).
ternodai(siti, darah).
ternodai(aldi, lumpur).
ternodai(joni, coklat).
ternodai(ina, coklat).
milik(budi,kaki_palsu).
milik(joni,pistol).
/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan).
cara_kerja_mirip(balok, pentungan).
cara_kerja_mirip(gunting, pisau).
cara_kerja_mirip(sepatu_bola, pentungan).
kemungkinan_milik(X,sepatu_bola):-
orang(X,_,_,pemain_sepak_bola).
kemungkinan_milik(X,gunting):-
orang(X,_,_,pekerja_salon).
kemungkinan_milik(X,Benda):-
milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
terbunuh_dengan(siti,Senjata) ,
cara_kerja_mirip(Benda,Senjata) ,
kemungkinan_milik(X,Benda).
%mencari yang dicurigai membunuh siti, siti rebunuh dengan senjata apa.
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,m,_),
selingkuh(siti,X).
%mencari motif pembunuhan siti, dan mencari laki - laki yang dicurigai selingkuh dengan siti
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,f,_),
selingkuh(X,Lakilaki),
selingkuh(siti,Lakilaki).
% mencari laki - laki yang selingkuh dengan selingkuhan siti
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(uang),
orang(X,_,_,pencopet).
pembunuh(Pembunuh):-					
orang(Pembunuh,_,_,_),					
terbunuh(Terbunuh),					
Terbunuh <> Pembunuh, /* Bukan bunuh diri */		
dicurigai(Pembunuh),					
ternodai(Pembunuh,Zat),					
ternodai(Terbunuh,Zat).	
% mencari apakah pencopet adalah pembunuhnya 				
GOAL
pembunuh(X).					
%budi adalah pembunuh berdasarkan fakta- fakta yaitu
%pada fakta orang, budi memiliki nama, umur gender, dan pekerjaan
%budi adaklah lelaki umur 55 tahun yang kerja sebagai tukang kayu
%faktanya siti adalah korban yang terbunuh
%saat dicari yang dicurigai, pada seleksi pertama, dicari senjata pembunuh
%yaitu senja tersebut adalah kaki palsu dan memiliki cara kerja mirip dengan pentungan
% faktanya budi memiliki kaki palsu
%faktanya siti dan budi sama - sama ternodai oleh darah.
%maka budi adalah seorang pembunuh, karna beberapa fakta telah dipenuhi oleh budi.	
							