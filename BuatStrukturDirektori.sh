#======================================
#Nama   : Syahru Ramadhan Ibrahim
#NIM    : 05301425080
#Prodi  : Sistem Informasi / Kelas D
#Script ini membuat struktur direktori dasar dan beberapa file contoh.
#======================================

# 1. Membuat beberapa direktori utama menggunakan mkdir.
# mkdir = membuat folder baru
mkdir documents images archives logs

# 2. Membuat file contoh menggunakan echo dan touch.
#  - for i in {1..5}: melakukan perulangan sebanyak 5 kali.
#  - echo "...." > nama_file : membuat file dan menulis teks ke dalamnya.
#  - touch : membuat file kosong dengan ekstensi tertentu.
for i in {1..5}; do
	echo "ini file documen ke-$i" > documen$i.doc
	echo "ini file arsip ke-$i" > arsip$i.zip 
	touch gambar$i.png  
	touch filelogs$i.log 
done
