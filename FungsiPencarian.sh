#======================================
#Nama   : Syahru Ramadhan Ibrahim
#NIM    : 05301425080
#Prodi  : Sistem Informasi / Kelas D
#Script ini membuat menu interaktif untuk mencari file berdasarkan nama, ukuran, atau isi.
#======================================

# Fungsi pencarian berdasarkan nama file
nama() {
	read -p "Nama File: " nama              # Meminta input nama file dari user
	find . -type f -name "*$nama*"          # Mencari file dengan pola nama yang dimasukkan
}

# Fungsi pencarian berdasarkan ukuran file
ukuran() {
	read -p "Ukuran File(+1M/-1M): " ukuran # Contoh input: +1M (lebih dari 1MB) atau -1M (kurang dari 1MB)
	find . -type f -size "$ukuran"          # Mencari file sesuai ukuran
}

# Fungsi pencarian berdasarkan isi file
konten() {
	read -p "Konten File: " konten          # Meminta teks yang ingin dicari di dalam file
	grep -r "$konten" .                    # grep -r = rekursif
}

# Menu interaktif yang berjalan terus-menerus hingga user memilih keluar
while true; do
	echo "===Pencarian File==="
	echo "1. Cari Nama"
	echo "2. Cari Ukuran"
	echo "3. Cari Konten"
	echo "4. Keluar"
	read -p "Pilih Opsi (1...4): " opsi

	case $opsi in
		1) nama ;;                              # Menjalankan fungsi nama
		2) ukuran ;;                            # Menjalankan fungsi ukuran
		3) konten ;;                            # Menjalankan fungsi konten
		4) echo "Keluar dari program."; exit ;; # Mengakhiri script
		*) echo "Pilihan tidak valid!" ;;       # Menangani input yang salah
	esac
done
