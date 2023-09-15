# Go to windows and create folder share 
# click on properties, click on sharing, click on advanced sharing, click on share this folder, Then click on permissions, Add, provide your user, provide full permissions, apply, ok.
#  Now share is created. We can access this share like the following
//ip/<share>

# install cifs utils
apt install cifs-utils
mkdir /data1
touch /etc/win-credentials
# update the following info in that file
username=devops
password=India@123456

# provide required permissiosn
chmod 600 /etc/win-credentials
# check the uid, gid of a user using following command
id
# mound the network share using following command.
mount -t cifs -o credentials=<credPath>,uid=<uid>,gid=<gid>,dir_mode=0755,file_mode=0755 //<privateIP>/<shareName> <mount point>

mount -t cifs -o credentials=/etc/win-credentials,uid=0,gid=0,dir_mode=0755,file_mode=0755 //10.0.0.5/share /data1
