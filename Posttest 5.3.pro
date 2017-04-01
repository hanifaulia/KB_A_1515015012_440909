DOMAINS		
	nama = orang(symbol,symbol)				
	hari_lahir = tanggal_lahir(integer,symbol,integer) 	
	telepon = symbol 					
PREDICATES
	nondeterm daftar_telepon(nama,symbol,hari_lahir)  % objek dari daftar telpon yang jamak
								
	yang_ulang_tahun_bulan_ini
	konversi_bulan(symbol,integer)				
	cek_bulan_ulang_tahun(integer,hari_lahir)		
	cetak_orang(nama)					
CLAUSES	
	yang_ulang_tahun_bulan_ini:-					%aturan akan akan diambil yang ulang tahun bulan ini
	write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl, 	
	write(" Nama Pertama\t\t Nama Kedua\n"),			 
	write("******************************************************"),nl,
	date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */	% mengambil bulan dari sistem komptuter, tanggal dan tahun diabaikan 
	daftar_telepon(Orang, _, Tanggal),				
	cek_bulan_ulang_tahun(Bulan_ini, Tanggal),
	cetak_orang(Orang),
	fail.						%untuk memaksa lacak balik
	yang_ulang_tahun_bulan_ini:-
	write("\n\n Tekan sembarang tombol..."),nl, %untuk menghasilkan yes
	readchar(_).
	cetak_orang(orang(Pertama,Kedua)):-
	write(" ",Pertama,"\t\t\t ",Kedua),nl.%untuk memprint nama
	cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-% mengecek bulan ultah dengan mencocokan kondisi
	konversi_bulan(Bulan,Bulan1),
	Bul = Bulan1.
	%dibawah berisi fakta2 tanggal lahir
	daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)).
	daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).
	daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).
	daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).	
	daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).	
	daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).
	daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).
	daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
	daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
	daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
	daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
	daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
	daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).
	daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).
	daftar_telepon(orang(sri,sugiarti),"512-5612",tanggal_lahir(3,mar, 1935)).
	daftar_telepon(orang(aldi,badwin),"513-5634",tanggal_lahir(13,mar, 1945)).
	daftar_telepon(orang(gigi,gilang),"514-5656",tanggal_lahir(23,mar, 1955)).
	daftar_telepon(orang(titi,cokelat),"515-5678",tanggal_lahir(30,mar, 1965)).
	
	konversi_bulan(jan, 1).		%konversi nama bulan ke angka
	konversi_bulan(feb, 2).
	konversi_bulan(mar, 3).
	konversi_bulan(apr, 4).
	konversi_bulan(may, 5).
	konversi_bulan(jun, 6).
	konversi_bulan(jul, 7).
	konversi_bulan(aug, 8).
	konversi_bulan(sep, 9).
	konversi_bulan(oct, 10).
	konversi_bulan(nov, 11).
	konversi_bulan(dec, 12).
GOAL
	yang_ulang_tahun_bulan_ini.	%goalnya hanya mencetak orang yang lahir bulan ini(sesuai sistem komputer yaitu ui,yansen