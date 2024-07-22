free -h
swapon --show
fallocate -l 8G /swapfile
mkswap /swapfile
swapon --show
swapon /swapfile
swapon --show
free -h
cp /etc/fstab /etc/fstab_bkp

echo '/swapfile none sawp sw 0 0' | sudo tee -a /etc/fstab
cat /etc/fstab
