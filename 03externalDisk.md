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
UUID="df061bb2-48d1-42cc-946f-562d65e366a0" /data1 ext4 defaults 0 0
