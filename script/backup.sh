#!/bin/bash
# Nama: Deko Rovaldo V
# NIM: 09011382530152
# Kelas: SKU3B

SOURCE_DIR="$HOME/data_09011382530152"
BACKUP_DIR="$HOME/backup_09011382530152"
LOG_FILE="$BACKUP_DIR/backup.log"

# Membuat direktori backup
mkdir -p "$BACKUP_DIR"

# Memeriksa direktori sumber
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Direktori sumber tidak ditemukan."
    exit 1
fi

# Mencari semua file .txt
LIST_FILE=$(mktemp)
find "$SOURCE_DIR" -type f -name "*.txt" > "$LIST_FILE"
FILE_COUNT=$(wc -l < "$LIST_FILE")

if [ "$FILE_COUNT" -eq 0 ]; then
    echo "Error: Tidak ada file .txt."
    rm -f "$LIST_FILE"
    exit 1
fi

# Menentukan nama arsip
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="backup_09011382530152_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

# Membuat arsip terkompresi
if tar -czvf "$ARCHIVE_PATH" -T "$LIST_FILE"; then
    echo "Verifikasi isi arsip:"
    tar -tzvf "$ARCHIVE_PATH"

    # Mencatat hasil backup ke log
    ARCHIVE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)
    LOG_DATE=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$LOG_DATE | $ARCHIVE_NAME | $FILE_COUNT | $ARCHIVE_SIZE" >> "$LOG_FILE"

    echo "Backup berhasil: $ARCHIVE_PATH"
else
    echo "Error: Pembuatan arsip gagal."
    rm -f "$ARCHIVE_PATH"
    rm -f "$LIST_FILE"
    exit 1
fi

# Menghapus daftar sementara
rm -f "$LIST_FILE"
