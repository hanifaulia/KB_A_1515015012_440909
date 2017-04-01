DOMAINS
benda = buku(judul, pengarang) ;	%pendeklarasian objek dengan tipe datanya masing-masing
		kuda(nama) ; 			
		kapal ;				
		bukubank(saldo)		
judul, pengarang, nama = symbol		
saldo = real				
PREDICATES
nondeterm milik(nama,benda)
CLAUSES		
	milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).	%faktanya erwin memiliki buku Markesot Bertutur dan pengaranganya Emha Ainun Najib
	milik(erwin, kuda(buraq)). 					%faktanya erwin memiliki kuda buraq
	milik(erwin, kapal). 						%faktanya erwin memiliki kapal
	milik(erwin, bukubank(1000)). 					%faktanya erwin memiliki bukubank dengan saldo 1000 
GOAL		
	milik(erwin, Benda). %menampilkan semua benda milik erwin