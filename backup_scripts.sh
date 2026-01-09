#!/bin/bash

SOURCE="/etc"
DEST="$HOME/backup_$(date +%F).tar.gz"

tar -czf $DEST $SOURCE

echo "Backup created at $DEST"