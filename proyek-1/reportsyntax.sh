#======================================
#Nama   : Syahru Ramadhan Ibrahim
#NIM    : 05301425080
#Prodi  : Sistem Informasi | Kelas D
#Script ini membuat laporan ringkas tentang isi direktori (jumlah file, ukuran, dan daftar file).
#======================================

# Membuat file report.txt dan menuliskan informasi sistem file ke dalamnya

echo "=====LAPORAN STATISTIK FILE SISTEM=====" > report.txt   # Membuat file laporan baru
echo "tanggal: $(date)" >> report.txt                        # Menulis tanggal dan waktu sekarang
echo " " >> report.txt

# Menghitung jumlah file dan direktori
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
