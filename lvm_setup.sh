#!/bin/bash

pvcreate /dev/sdb
vgcreate storage_vg /dev/sdb
lvcreate -n storage_lv -l 100%FREE storage_vg
mkfs.ext4 /dev/storage_vg/storage_lv

mkdir -p /mnt/storage
mount /dev/storage_vg/storage_lv /mnt/storage
