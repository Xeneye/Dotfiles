#!/bin/bash
##########################################
## First we snapshot the root partition.##
##########################################
## Creating snapshot of root partition.
lvcreate -l +100%FREE -s -n snaproot /dev/xenstation/root
## Mount snapshot.
mount /dev/xenstation/snaproot /mnt/Snapshot/root
## Set backup parameters.
rdiff-backup -v5 --print-statistics --exclude-if-present .nobackup /mnt/Snapshot/root /mnt/Vault/lvm-snapshot/root/
## Unmount snapshot.
umount /mnt/Snapshot/root/
## Remove snapshot partition from lvm.
lvremove -f /dev/xenstation/snaproot
#############################################
## Secondly we snapshot the home partition.##
#############################################
## Creating snapshot of home partition.
lvcreate -l +100%FREE -s -n snaphome /dev/xenstation/home
## Mount snapshot.
mount /dev/xenstation/snaphome /mnt/Snapshot/home
## Set backup parameters.
rdiff-backup -v5 --print-statistics --exclude-if-present .nobackup /mnt/Snapshot/home /mnt/Vault/lvm-snapshot/home/
## Unmount snapshot.
umount /mnt/Snapshot/home/
## Remove snapshot partition from lvm.
lvremove -f /dev/xenstation/snaphome
notify-send -t 5000 'Snapshot Taken!' --icon=camera
