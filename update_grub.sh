#!/bin/bash

# Workaround for some Sony Vaio's models 
# Updates /boot/grub/grub.cfg
# Run: sudo ./update_grub.sh


sed -i.orig  -e '/EFIPATH=/aEFIPATH=$(echo $EFIPATH | sed s/Microsoft/Windows10/)'  /etc/grub.d/30_os-prober \
&& chmod -x /etc/grub.d/30_os-prober.orig \
&& update-grub \
&& echo == grub.cfg file is updated ==
