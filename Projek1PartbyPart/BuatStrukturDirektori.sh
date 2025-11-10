#======================================
#Nama	 : Syahru Ramadhan Ibrahim
#Nim	 : 05301425080
#Prodi	 : Sistem Informasi/Kelas D
#Membuat file
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
