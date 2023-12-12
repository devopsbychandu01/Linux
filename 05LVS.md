### LVM on xfs file system ###
df -Th
lsblk
fdisk -l
fdisk /dev/sdd -l
fdisk /dev/sdd
lsblk
# change the partition type
fdisk /dev/sdd
pvs
pvcreate <partition>
pvs
vgs
vgcreate <vgname> <partition>
vgs
lvs
lvcreate -n <lvname> -L <size>G <vgname>
lvs
lvdisplay /dev/<vgname>/<lvname>
mkfs.xfs <LV>
mkdir /data1
mount <lv> /data1
df -Th
# Auto mount: 
# type blkid command and get uuid of the lv
# update the info in /etc/fstab file with following format
uuid=<id> <mount point> <file system type> defaults 0 0

# extending the mount point size if lv has some space
df -Th
lvextend -L +20G <lv>
df -Th
xfs_growfs <lv>

# extending the mount point size if lv doesn't has some space
lblk
fdisk /dev/sdd
pvcreate <partition>
pvs
vgextend <vgname> <partition>
vgs
lvextend -L +20G <lv>
xfs_growfs <lv>




### LVM on ext4 file system ###
df -Th
lsblk
fdisk -l
fdisk /dev/sdc -l
fdisk /dev/sdc
lsblk
# change the partition type
fdisk /dev/sdc
pvs
pvcreate <partition>
pvs
vgs
vgcreate <vgname> <partition>
vgs
lvs
lvcreate -n <lvname> -L <size> <vgname>
lvs
lvdisplay /dev/<vgname>/<lvname>
mkfs.ext4 <LV>
mkdir /data2
mount /data <lv>
df -Th
# Auto mount: 
# type blkid command and get uuid of the lv
# update the info in /etc/fstab file with following format
uuid=<id> <mount point> <file system type> defaults 0 0
# extending the mount point size if lv has some space
df -Th
lvextend -L +20G <lv>
df -Th
resize2fs <lv>

# extending the mount point size if lv doesn't has some space
lblk
fdisk /dev/sdd
pvcreate <partition>
pvs
vgextend <vgname> <partition>
vgs
lvextend -L +20G <lv>
resize2fs <lv>
