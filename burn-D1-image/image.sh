#!/bin/bash

set -ex

IMG="openEuler-D1-xfce-docker.img"
TF="/dev/sdb"
DISK="${TF}4"

sudo dd if=${IMG} of=${TF} bs=1M iflag=fullblock oflag=direct conv=fsync status=progress
sudo fdisk ${TF}
sudo resize2fs ${DISK}
sudo fdisk -l