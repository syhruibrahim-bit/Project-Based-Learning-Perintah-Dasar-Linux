echo "=====LAPORAN STATISTIK FILE SISTEM=====" > report.txt
echo "tanggal: $(date)" >> report.txt
echo " " >> report.txt
echo "Jumlah file dan Direktori : " >> report.txt
ls | wc -l >> report.txt
echo " " >> report.txt
echo "Ukuran setiap folder: " >> report.txt
du -sh *  >> report.txt
echo "  ">> report.txt
echo "Daftar file setiap folder: " >> report.txt
ls -R >> report.txt
echo " " >> report.txt
echo "Total ukuran seluruh file:" >> report.txt
du -ch | grep total >> report.txt
echo " " >> report.txt
echo "==========Laporan Selesai==========" >> report.txt 
