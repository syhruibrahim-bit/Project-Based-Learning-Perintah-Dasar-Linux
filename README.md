==============================================
Nama   : Syahru Ramadhan Ibrahim
NIM    : 05301425080
Prodi  : Sistem Informasi — Kelas D
==============================================


DAFTAR ISI
1. Latihan 1 – Skrip Manajemen File
   - BuatStrukturDirektori.sh
   - ScriptOrganisasiFile.sh
   - FungsiPencarian.sh
   - reportsyntax.sh
2. Latihan 2 – Skrip Struktur Proyek
   - struktur_proyek.sh
3. Persyaratan Sistem
4. Lisensi

LATIHAN 1 – SKRIP MANAJEMEN FILE

Latihan pertama berisi empat skrip yang berfungsi untuk membuat,
mengorganisasi, mencari, dan melaporkan file di sistem Linux.

BuatStrukturDirektori.sh

Fungsi:
Membuat struktur dasar direktori dan file sampel:
- Folder: documents, images, archives, logs
- File contoh: .doc, .zip, .png, .log

Syntax :
mkdir documents images archives logs
for i in {1..5}; do
    echo "ini file documen ke-$i" > documen$i.doc
    echo "ini file arsip ke-$i" > arsip$i.zip
    touch gambar$i.png
    touch filelogs$i.log
done

Cara menjalankan:
./BuatStrukturDirektori.sh

Struktur hasil:
documents/
images/
archives/
logs/


ScriptOrganisasiFile.sh

Fungsi:
Mengelompokkan file berdasarkan ekstensi dan memindahkannya
ke folder yang sesuai menggunakan perintah find, mv, dan cp.

Syntax :
find -type f -name "*.doc" -not -path "./documents/*" -exec mv {} documents/ \;
find -type f -name "*.zip" -not -path "./archives/*" -exec mv {} archives/ \;
find -type f -name "*.png" -not -path "./images/*" -exec cp {} images/ \;
find -type f -name "*.log" -not -path "./logs/*" -exec mv {} logs/ \;

Cara menjalankan:
./ScriptOrganisasiFile.sh

File akan otomatis tersusun:
  .doc -> documents/
  .zip -> archives/
  .png -> disalin ke images/
  .log -> logs/


FungsiPencarian.sh

Fungsi:
Menambahkan fitur pencarian interaktif berdasarkan:
- Nama file
- Ukuran file
- Konten teks di dalam file

Syntax:
nama() { read -p "Nama File: " nama; find . -type f -name "*$nama*"; }
ukuran() { read -p "Ukuran File(+1M/-1M): " ukuran; find . -type f -size "$ukuran"; }
konten() { read -p "Konten File: " konten; grep -rl "$konten" .; }

Cara menjalankan:
./FungsiPencarian.sh

Menu interaktif:
===Pencarian File===
1. Cari Nama
2. Cari Ukuran
3. Cari Konten
4. Keluar


reportsyntax.sh

Fungsi:
Menghasilkan laporan statistik file sistem ke dalam file report.txt.

Syntax:
echo "=====LAPORAN STATISTIK FILE SISTEM=====" > report.txt
echo "tanggal: $(date)" >> report.txt
ls | wc -l >> report.txt
du -sh * >> report.txt
du -ch | grep total >> report.txt

Cara menjalankan:
./reportsyntax.sh

File report.txt akan berisi:
  - Jumlah file dan direktori
  - Ukuran tiap folder
  - Daftar isi direktori
  - Total ukuran keseluruhan



LATIHAN 2 – SKRIP STRUKTUR PROYEK
Latihan kedua berfokus pada pembuatan struktur proyek di direktori home pengguna.

struktur_proyek.sh

Fungsi:
Membuat struktur proyek baru bernama Project_sistem_operasi_B
dengan subdirektori src, doc, dan data.

Syntax:
cd ~
mkdir Project_sistem_operasi_B
cd Project_sistem_operasi_B
mkdir src doc data
touch README.sh src/main.sh
ls -R
du -sh ~/Project_sistem_operasi_B

Cara menjalankan:
./struktur_proyek.sh

Struktur yang dihasilkan:
Project_sistem_operasi_B/
    data/
    doc/
    src/
     └── main.sh
    README.sh


PERSYARATAN SISTEM
- Sistem operasi: Linux / macOS
- Shell: Bash
- Perintah yang digunakan:
  mkdir, find, grep, du, ls, wc, cp, mv, echo, touch


LISENSI
Proyek ini dibuat untuk keperluan Praktikum Sistem Operasi.
Bebas digunakan untuk pembelajaran, eksperimen, dan pengembangan skrip otomatisasi file.

Catatan:
Pastikan Anda memiliki izin tulis di direktori kerja sebelum menjalankan setiap skrip.
Jika ada hal ingin di tanyakan 
