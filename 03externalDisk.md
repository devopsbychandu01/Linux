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
UUID="06d34b6d-3fdd-4630-88d7-d4465066ff39" /data1 ext4 defaults 0 0
