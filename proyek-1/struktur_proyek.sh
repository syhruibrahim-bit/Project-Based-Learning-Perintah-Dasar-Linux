#=========================================
#Nama   : Syahru Ramadhan Ibrahim
#Prodi  : Sistem Informasi / Kelas D
#Deskripsi: Script ini membuat struktur proyek sederhana beserta beberapa file awal.
#=========================================

# 1. Berpindah ke direktori home pengguna (~) dan membuat direktori proyek utama
cd ~
mkdir Project_sistem_operasi_B
cd Project_sistem_operasi_B

# 2. Membuat subdirektori utama untuk proyek
mkdir src doc data

# 3. Membuat file kosong README.sh dan src/main.sh
touch README.sh src/main.sh

# 4. Menampilkan struktur direktori dan ukuran total proyek
echo "===Struktur Direktori==="
ls -R                                         # Menampilkan semua isi folder dan subfolder
echo "===Ukuran Direktori==="
du -sh ~/Project_sistem_operasi_B             # Menampilkan ukuran total direktori proyek
