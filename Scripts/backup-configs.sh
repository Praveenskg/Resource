#!/bin/bash

# Backup Configuration Files Script
# Backs up important configuration files to a backup directory

set -e

BACKUP_DIR="$HOME/.config-backup"
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_PATH="$BACKUP_DIR/$DATE"

echo "📦 Backing up configuration files..."

# Create backup directory
mkdir -p "$BACKUP_PATH"

# Configuration files to backup
configs=(
    "$HOME/.zshrc"
    "$HOME/.bashrc"
    "$HOME/.bash_profile"
    "$HOME/.gitconfig"
    "$HOME/.vimrc"
    "$HOME/.vim"
    "$HOME/.config/nvim"
    "$HOME/.config/vscode"
    "$HOME/.ssh/config"
    "$HOME/.npmrc"
    "$HOME/.yarnrc"
)

# Backup each config file
for config in "${configs[@]}"; do
    if [ -e "$config" ]; then
        echo "Backing up: $config"
        # Get directory structure
        dir=$(dirname "$config")
        backup_dir="$BACKUP_PATH$dir"
        mkdir -p "$backup_dir"
        cp -r "$config" "$backup_dir/"
    fi
done

# Create archive
echo "Creating archive..."
cd "$BACKUP_DIR"
tar -czf "config-backup-$DATE.tar.gz" "$DATE"
rm -rf "$DATE"

echo "✅ Backup complete: $BACKUP_DIR/config-backup-$DATE.tar.gz"

# Keep only last 5 backups
echo "Cleaning old backups..."
cd "$BACKUP_DIR"
ls -t config-backup-*.tar.gz | tail -n +6 | xargs -r rm

echo "✅ Old backups cleaned"

