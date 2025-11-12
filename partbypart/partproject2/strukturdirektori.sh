# 4. Menampilkan struktur direktori dan ukuran total proyek
echo "===Struktur Direktori==="              # Judul
tree                                         # Menampilkan daftar semua file dan folder secara rekursif (termasuk isi subfolder)
echo "===Ukuran Direktori==="                # Judul
du -sh ~/Project_sistem_operasi_D            # Menampilkan total ukuran direktori proyek dalam format yang mudah dibaca (-h = human-readable)
