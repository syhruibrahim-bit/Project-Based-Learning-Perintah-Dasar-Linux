
#======================================
#Nama   : Syahru Ramadhan Ibrahim
#NIM    : 05301425080
#Prodi  : Sistem Informasi / Kelas D
#======================================

# 1. Membuat beberapa direktori utama menggunakan mkdir.
# mkdir = membuat folder baru
mkdir documents images archives logs

#  - Membuat file contoh menggunakan echo dan touch.
#  - for i in {1..5}: melakukan perulangan sebanyak 5 kali.
#  - echo "...." > nama_file : membuat file dan menulis teks ke dalamnya.
#  - touch : membuat file kosong dengan ekstensi tertentu.
for i in {1..5}; do
	echo "ini file documen ke-$i" > documen$i.doc
	echo "ini file arsip ke-$i" > arsip$i.zip 
	touch gambar$i.png  
	touch filelogs$i.log 
done


# 2. Memindahkan file sesuai ekstensi menggunakan find,mv dan cp
# find -type f : mencari semua file biasa.
# -name "*.doc" : mencari file dengan ekstensi .doc
# -not -path "./documents/*" : memastikan file di dalam folder tujuan tidak ikut dipindahkan.
# -exec mv {} documents/ \; : mengeksekusi perintah mv (pindah) untuk setiap file yang ditemukan.

find -type f -name "*.doc" -not -path "./documents/*" -exec mv {} documents/ \;
find -type f -name "*.zip" -not -path "./archives/*" -exec mv {} archives/ \;
find -type f -name "*.png" -not -path "./images/*" -exec cp {} images/ \;  # Menggunakan 'cp' agar sesuai intruksi yang diberikan oleh dosen
find -type f -name "*.log" -not -path "./logs/*" -exec mv {} logs/ \;


# 3. Membuat fungsi pencarian beserta menu interaktif untuk mencari file berdasarkan nama, ukuran, atau isi.

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


# 4. Membuat laporan statistik ringkas tentang isi direktori (jumlah file, ukuran, dan daftar file).
# Membuat file report.txt dan menuliskan informasi sistem file ke dalamnya

echo "=====LAPORAN STATISTIK FILE SISTEM=====" > report.txt 
echo "tanggal: $(date)" >> report.txt                        # Menulis tanggal dan waktu sekarang
echo " " >> report.txt

echo "Jumlah file dan Direktori : " >> report.txt
ls | wc -l >> report.txt                                     # ls = daftar isi direktori, wc -l = menghitung baris (jumlah item)

echo " " >> report.txt
echo "Ukuran setiap folder: " >> report.txt
du -sh *  >> report.txt                                      # du -sh * = ukuran setiap folder/file dalam format mudah dibaca (KB/MB)

echo "  ">> report.txt
echo "Daftar file setiap folder: " >> report.txt
ls -R >> report.txt                                          # ls -R = menampilkan isi direktori secara rekursif

echo " " >> report.txt
echo "Total ukuran seluruh file:" >> report.txt
du -ch | grep total >> report.txt                            # du -ch = total ukuran semua file, grep total = hanya menampilkan total

echo " " >> report.txt
echo "==========Laporan Selesai==========" >> report.txt   
