#!/bin/bash

SRC_DIR="$HOME/digitales"
BACKUP_DIR="/backups"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%F).tar.gz"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_FILE $SRC_DIR

echo "📦 Backup creado: $BACKUP_FILE"
