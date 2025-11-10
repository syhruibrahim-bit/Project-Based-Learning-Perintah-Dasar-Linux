#======================================
#Nama	 : Syahru Ramadhan Ibrahim
#Nim	 : 05301425080
#Prodi	 : Sistem Informasi/Kelas D
#Memindahkan file sesuai extensi
#======================================

#2.Memindahkan File ke folder sesuai extensi (find,mv,cp)
	find -type f -name "*.doc" -not -path "./documents/*" -exec mv {} documents/ \;
	find -type f -name "*.zip" -not -path "./archives/*" -exec mv {} archives/ \;
	find -type f -name "*.png" -not -path "./images/*" -exec cp {} images/ \;
	find -type f -name "*.log" -not -path "./logs/*" -exec mv {} logs/ \;

