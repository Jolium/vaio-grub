#!/bin/bash

# Workaround for some Sony Vaio's models 
# Fully solves the problem related with dual boot
# Run: sudo ./full_repair.sh

curr_date=$(date +%Y-%m-%d.%H%M%S)

cp -r /boot /root/boot_backup.$curr_date \
&& echo 1')'  Backup created on '/root/boot_backup'... \
&& mkdir -p /boot/efi/EFI/Windows10 \
&& cp -r /boot/efi/EFI/Microsoft/* /boot/efi/EFI/Windows10 \
&& echo 2')'  Windows10 directory created... \
&& cp /boot/efi/EFI/MX19/grubx64.efi /boot/efi/EFI/Microsoft/Boot/bootmgfw.efi \
&& echo 3')'  bootmgfw.efi file recreated... \
&& sed -i s/Microsoft/Windows10/ /boot/grub/grub.cfg \
&& echo 4')'  grub.cfg file modified... \
&& echo 5')'  You can reboot the system.
