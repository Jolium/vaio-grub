#!/bin/bash

# Workaround for some Sony Vaio's models 
# Makes a backup of /boot on ~/boot-backup
# Run: ./backup_boot.sh

curr_date=$(date +%Y-%m-%d.%H%M%S)

mkdir -p ~/boot_backup \
&& cp -r /boot ~/boot_backup/boot_backup.$curr_date \
&& echo Backup created on '/home/'$USER'/boot_backup'
