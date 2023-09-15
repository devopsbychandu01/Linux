### softlink ###

## check the inode number ##
ls -li
# create file
echo "hello world" > file.txt
# create softlink
ln -s file.txt softlink.txt
## check the inode number ##
ls -li file.txt
ls -li softlink.txt
# remove file
rm -f file.txt
# now check content of the soft link file you will get error
cat softlink.txt



### hard Link ###
## check the inode number ##
ls -li
# create file
echo "hello world" > file.txt
# create softlink
ln file.txt hardlink.txt
## check the inode number ##
ls -li file.txt
ls -li hardlink.txt
# remove file
rm -f file.txt
# now check content of the soft link file you will not get error
cat hardlink.txt


## install application in linux using softlink ##
apt-get install openjdk-11-jdk
cd /opt
wget https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.tar.gz
tar -xvf apache-maven-3.9.4-bin.tar.gz
mv apache-maven-3.9.4 maven3
cd maven3/bin
./mvn --version
echo $PATH
ln -s /opt/maven3/bin/mvn /usr/local/bin/mvn
mvn --version