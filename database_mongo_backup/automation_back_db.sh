#!/bin/bash

# Nama database
DB_NAME="aris-dev"

# Direktori tempat backup akan disimpan
BACKUP_DIR="/home/aris/dev-aris/cronJob/database_mongo_backup/backup"

# Nama file backup dengan timestamp
DATE=$(date +\%Y-\%m-\%d_\%H-\%M-\%S)
BACKUP_NAME="${DB_NAME}_backup_$DATE"

# Perintah untuk membuat backup
mongodump --db "$DB_NAME" --out "$BACKUP_DIR/$BACKUP_NAME"

# Opsional: Hapus backup lama (misalnya, yang lebih dari 7 hari)
find "$BACKUP_DIR" -type d -mtime +7 -exec rm -rf {} \;
