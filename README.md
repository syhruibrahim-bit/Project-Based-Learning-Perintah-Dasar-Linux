**Nama     : Syahru Ramadhan Ibrahim**
--------------------------------------
**NIM      : 05301425080** 
--------------------------------------
**Prodi    : Sistem Informasi — Kelas D**
--------------------------------------

DAFTAR ISI
1. Project 1
   - Soal project 1
   - project1.sh
   - report.txt
2. Prject 2
   - Soal Project 2
   - project2.sh
3. Partbypart
   - part project 1
      - BuatStrukturDirektori.sh
      - ScriptOrganisasiFile.sh
      - FungsiPencarian.sh
      - reportsyntax.sh
   - part project 2
      - DirectoriProject.sh
      - Subdirektori.sh
      - sampelfile.sh
      - strukturdirektori.sh
      
4. Persyaratan Sistem
5. Lisensi
 

**PROJECT 1 – SKRIP MANAJEMEN FILE**
======================================
Latihan pertama berisi empat skrip yang berfungsi untuk membuat,
mengorganisasi, mencari, dan melaporkan file di sistem Linux.


**1. Buat Struktur Direktori**
-------------------------------------
Fungsi:
Membuat struktur dasar direktori dan file sampel:
- Folder: documents, images, archives, logs
- File contoh: .doc, .zip, .png, .log

Cara menjalankan:
./BuatStrukturDirektori.sh

Struktur hasil:
documents/
images/
archives/
logs/

**2. Script Organisasi File**
-------------------------------------
Fungsi:
Mengelompokkan file berdasarkan ekstensi dan memindahkannya
ke folder yang sesuai menggunakan perintah find, mv, dan cp.

Cara menjalankan:
./ScriptOrganisasiFile.sh

File akan otomatis tersusun:
.doc -> documents/
.zip -> archives/
.png -> disalin ke images/
.log -> logs/


**3. Fungsi Pencarian**
-------------------------------------
Fungsi:
Menambahkan fitur pencarian interaktif berdasarkan:
- Nama file
- Ukuran file
- Konten teks di dalam file

Cara menjalankan:
./FungsiPencarian.sh

Menu interaktif:
Pencarian File
1. Cari Nama
2. Cari Ukuran
3. Cari Konten
4. Keluar


**4. Membuat Laporan statistik**
-------------------------------------
Fungsi:
Menghasilkan laporan statistik file sistem ke dalam file report.txt.

Cara menjalankan:
./reportsyntax.sh

File report.txt akan berisi:
  - Jumlah file dan direktori
  - Ukuran tiap folder
  - Daftar isi direktori
  - Total ukuran keseluruhan


**PROJECT 2 – SKRIP STRUKTUR PROYEK**
=====================================
Latihan kedua berfokus pada pembuatan struktur proyek di direktori home pengguna.

**1. Struktur Direktori Proyek**
-------------------------------------
Fungsi:
Membuat struktur proyek baru bernama Project_sistem_operasi_D
dengan subdirektori src, doc, dan data.

Cara menjalankan:
./struktur_proyek.sh

Struktur yang dihasilkan:

Project_sistem_operasi_D/

data/
doc/
src/
└── main.sh
README.sh

**PERSYARATAN SISTEM**
=====================================
- Sistem operasi: Linux / macOS
- Shell: Bash
- Perintah yang digunakan: mkdir, find, grep, du, ls, wc, cp, mv, echo, touch


**TUJUAN**
=====================================
Proyek ini dibuat untuk keperluan Praktikum Sistem Operasi.
Bebas digunakan untuk pembelajaran, eksperimen, dan pengembangan skrip otomatisasi file.

Catatan:
Pastikan Anda memiliki izin tulis di direktori kerja sebelum menjalankan setiap skrip.
