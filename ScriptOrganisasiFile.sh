#======================================
#Nama   : Syahru Ramadhan Ibrahim
#NIM    : 05301425080
#Prodi  : Sistem Informasi / Kelas D
#Script ini mengelompokkan file ke dalam folder sesuai dengan ekstensi file.
#======================================

# 2. Memindahkan file sesuai ekstensi menggunakan find,mv dan cp
# find -type f : mencari semua file biasa.
# -name "*.doc" : mencari file dengan ekstensi .doc
# -not -path "./documents/*" : memastikan file di dalam folder tujuan tidak ikut dipindahkan.
# -exec mv {} documents/ \; : mengeksekusi perintah mv (pindah) untuk setiap file yang ditemukan.

find -type f -name "*.doc" -not -path "./documents/*" -exec mv {} documents/ \;
find -type f -name "*.zip" -not -path "./archives/*" -exec mv {} archives/ \;
find -type f -name "*.png" -not -path "./images/*" -exec cp {} images/ \;  # Menggunakan 'cp' agar sesuai intruksi yang diberikan oleh dosen
find -type f -name "*.log" -not -path "./logs/*" -exec mv {} logs/ \;
