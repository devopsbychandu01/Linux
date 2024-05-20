sudo echo "Hello World!"

# The actual sudo file should present in /usr/bin/sudo
# How system understand sudo.
# system check echo $PATH --> And if any directory is present with the name, then that will appear throughout the system.
echo $PATH
env
# Use export command to change the path variables.
# If you want your directory should present first, then use following command.
export PATH=/opt:$PATH
# If you want your directory should present last, then use following command.
export PATH=$PATH:/home/devops
# add multiple directories to path variable
export PATH=$PATH:/the/file/path:/the/file/path2

# path variable for external application.
# Let say you installed maven using following command.
apt-get install openjdk-11-jdk
wget https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.tar.gz
cd /opt
tar -xvf apache-maven-3.9.4-bin.tar.gz
mv apache-maven-3.9.4 maven3
# Inside of bin we will have maven executable file. If you try to open any other place it will not work. To make it global we need add this like path variable or need to do the softlink.
# we are adding the path variable.
export PATH=$PATH:/opt/maven3/bin

mvn --version