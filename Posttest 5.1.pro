DOMAINS	
orang = orang(nama,alamat)	 %deklarasi objek orang dengan memiliki terdiri dari 2 argumen nama dan alamat
nama = nama(pertama,kedua)	%domain nama tediri dari 2 parameter, nama pertama dan kedua
alamat = alamat(jalan,kota_kab,propinsi)	%domain alamat terdiri dari 3 parameter
jalan = jalan(nama_jalan,nomor)			%domain jalan terdiri dari 2 parameter
kota_kab,propinsi,nama_jalan = string	%pendeklarasian tipe data
pertama,kedua = symbol		%pendeklarasian tipe data
nomor = integer		%pendeklarasian tipe data

GOAL
P1 = orang(nama(diena,fatihah), alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),	%Data pertama dengan format lengkap yaitu menampilkan isi variable orang dan alamat
P1 = orang(nama(_,fatihah),Alamat),	%P1 akan mengambil data yang diatur pada goal pertama dan menampilkan nama diena dan alamat wijaya kusuma																	
P2 = orang(nama(nur,fatihah),Alamat),	%P2 akan menampilkan alamat yang diatur di P1

write("P1=",P1),nl,	%akan menampilkan p1								
write("P2=",P2),nl.	%akan menampilkan p2
				