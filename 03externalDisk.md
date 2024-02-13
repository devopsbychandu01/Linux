# create disk
df -Th
lsblk
fdisk /dev/sdc -l
fdisk /dev/sdc
n
p
w
lsblk
mkdir /data1
mkfs.ext4 /dev/sdc1
mount /dev/sdc1 /data1
df -Th

## Auto mount 
blkid
vi /etc/fstab
UUID="4ce62f85-f0c0-4638-b965-ae9ea830ac33" /data1 ext4 defaults 0 0
