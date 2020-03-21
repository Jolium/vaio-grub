#!/bin/bash

# Workaround for some Sony Vaio's models 
# Just recreates the grub to support dual boot
# Run: sudo ./recreate_grub.sh


mkdir -p /boot/efi/EFI/Windows10 \
&& cp -r /boot/efi/EFI/Microsoft/* /boot/efi/EFI/Windows10 \
&& echo Windows10 directory created... \
&& cp /boot/efi/EFI/MX19/grubx64.efi /boot/efi/EFI/Microsoft/Boot/bootmgfw.efi \
&& echo bootmgfw.efi file recreated
