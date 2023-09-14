# create disk
lsblk
fdisk /dev/sdc -l
fdisk /dev/sdc
n
p
w
lsblk
mkdir /data1
mkfs.ext4 /dev/sdc1