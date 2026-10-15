# UTS Sistem Operasi

## 1. Identitas Mahasiswa
- **Nama:** Deko Rovaldo V
- **NIM:** 09011382530152
- **Kelas:** SKU3B

## 2. Deskripsi
Proyek ini merupakan tugas UTS mata kuliah Sistem Operasi yang menggunakan Linux Ubuntu dan Bash Shell. Proyek ini berisi script untuk membuat backup, menjalankan backup secara berulang, dan menggunakan alias untuk mempermudah perintah backup serta melihat log.

## 3. Cara Menjalankan
1. Buka terminal Ubuntu.
2. Masuk ke direktori proyek:
   ```bash
   cd ~/uts-so-09011382530152
   ```
3. Aktifkan alias:
   ```bash
   source script/alias.sh
   ```
4. Jalankan proses backup:
   ```bash
   backup
   ```
5. Lihat log backup:
   ```bash
   backup-log
   ```

Untuk menjalankan backup berulang, gunakan script `backup_loop.sh` sesuai konfigurasi interval yang tersedia di dalam script.

## 4. Fitur Pengembangan yang Dipilih
Fitur pengembangan yang dipilih adalah **otomatisasi backup berulang (backup loop)**. Fitur ini menjalankan proses backup secara berkala menggunakan perulangan `while` dan jeda waktu `sleep`. Hasil backup disimpan dalam arsip `.tar.gz`, sedangkan aktivitasnya dicatat dalam file log.

## 5. Bukti Job Control
Job control digunakan untuk mengatur proses yang berjalan di terminal Linux, seperti menjalankan proses di latar belakang dan menghentikan proses sementara.

Perintah yang dapat digunakan:
- `jobs` untuk melihat pekerjaan yang berjalan di background.
- `Ctrl + Z` untuk menghentikan sementara proses aktif.
- `bg` untuk melanjutkan proses di background.
- `fg` untuk membawa proses kembali ke foreground.
- `kill %1` untuk menghentikan job nomor 1, jika memang job tersebut ada.

**Bukti pelaksanaan:** Lampirkan screenshot terminal saat menjalankan proses backup loop, melihat daftar job dengan `jobs`, atau mengatur proses menggunakan `Ctrl + Z`, `bg`, dan `fg`.

## 6. Kendala
Kendala yang ditemui selama pengerjaan adalah proses autentikasi GitHub CLI yang sempat mengalami gangguan koneksi. Selain itu, diperlukan pemeriksaan lokasi file dan direktori backup agar proses penyimpanan berjalan dengan benar.

Kendala tersebut ditangani dengan mengulangi autentikasi GitHub, memeriksa konfigurasi Git, dan memastikan file backup serta log tersimpan di direktori yang sesuai.

## 7. Kesimpulan
Melalui proyek ini, mahasiswa mempelajari penggunaan Bash Shell, pengelolaan file, pembuatan backup otomatis, pencatatan log, alias, serta dasar pengelolaan proses pada Linux Ubuntu.
## 8. Struktur Proyek

```text
uts-so-09011382530152/
├── README.md
├── nim.txt
└── script/
    ├── alias.sh
    ├── backup.sh
    └── backup_loop.sh
```

Struktur tersebut memisahkan dokumentasi, identitas mahasiswa, dan script Bash agar proyek lebih terorganisasi.
## 8. Struktur Proyek

```text
uts-so-09011382530152/
├── README.md
├── nim.txt
└── script/
    ├── alias.sh
    ├── backup.sh
    └── backup_loop.sh
```

Struktur tersebut memisahkan dokumentasi, identitas mahasiswa, dan script Bash agar proyek lebih terorganisasi.
## 10. Evaluasi dan Pengembangan

Proyek ini dapat dikembangkan dengan menambahkan validasi hasil backup, pengaturan interval otomatis, dan pencatatan pesan kesalahan. Pengembangan tersebut bertujuan meningkatkan keandalan proses backup pada Linux Ubuntu.
