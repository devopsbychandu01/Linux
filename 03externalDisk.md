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
UUID="b72c6221-f331-4fa7-afce-93652bbcc423" /data1 ext4 defaults 0 0
