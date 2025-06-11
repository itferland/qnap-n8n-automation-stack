#!/bin/bash

DATE=$(date +"%Y-%m-%d")
BACKUP_DIR="/share/Backups/docker-backups/$DATE"
mkdir -p "$BACKUP_DIR"

cp -r /share/Container/n8n-data "$BACKUP_DIR/n8n-data"
cp -r /share/Container/redis-data "$BACKUP_DIR/redis-data"
cp -r /share/Container/grafana-data "$BACKUP_DIR/grafana-data"
cp -r /share/Container/prometheus-data "$BACKUP_DIR/prometheus-data"
cp -r /share/Container/docker-compose/n8n-docker "$BACKUP_DIR/docker-compose"

find /share/Backups/docker-backups/ -mindepth 1 -maxdepth 1 -type d -mtime +14 -exec rm -rf {} \;

echo "Backup completed on $(date)" >> /share/Container/docker-backup.log