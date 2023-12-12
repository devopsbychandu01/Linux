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
UUID="a742bb99-4f82-41ec-993a-717dedee4433" /data1 xfs defaults 0 0
