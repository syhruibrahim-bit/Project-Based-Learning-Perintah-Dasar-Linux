#======================================
#Nama	 : Syahru Ramadhan Ibrahim
#Nim	 : 05301425080
#Prodi	 : Sistem Informasi/Kelas D
#Mencari file
#======================================

#3.Membuat Fungsi Pencarian (find,grep)
nama() {
	read -p "Nama File: " nama
	find . -type f -name "*$nama*"
}
ukuran() {
	read -p "Ukuran File(+1M/-1M): " ukuran
	find . -type f -size "$ukuran"
}
konten() {
	read -p "Konten File: " konten
	grep -rl "$konten" .
}
while true; do
	echo "===Pencarian File==="
	echo "1. Cari Nama: "
	echo "2. Cari Ukuran: "
	echo "3. Cari Konten: "
	echo "4. Keluar"
	read -p "Pilih Opsi (1...4): " opsi

	case $opsi in
		1) nama ;;
		2) ukuran ;;
		3) konten ;;
		4) echo "Keluar dari program."; exit ;;
		5) echo "Pilihan tidak valid!" ;;
	esac
done
