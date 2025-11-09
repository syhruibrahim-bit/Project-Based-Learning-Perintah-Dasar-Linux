#======================================
#Nama	 : Syahru Ramadhan Ibrahim
#Nim	 : 05301425080
#Prodi	 : Sistem Informasi/Kelas D
#Membuat,Memindahkan, dan mencari file
#======================================

#1.Membuat Direktori (mkdir)
mkdir documents images archives logs
#1.2 Membuat File Sampel (echo,touch)
for i in {1..5}; do
	echo "ini file documen ke-$i" > documen$i.doc
	echo "ini file arsip ke-$i" > arsip$i.zip
	touch gambar$i.png
	touch filelogs$i.log
done

#2.Memindahkan File ke folder sesuai extensi (find,mv,cp)
	find -type f -name "*.doc" -not -path "./documents/*" -exec mv {} documents/ \;
	find -type f -name "*.zip" -not -path "./archives/*" -exec mv {} archives/ \;
	find -type f -name "*.png" -not -path "./images/*" -exec cp {} images/ \;
	find -type f -name "*.log" -not -path "./logs/*" -exec mv {} logs/ \;

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
