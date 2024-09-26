### ls ###
-l	known as a long format that displays detailed information about files and directories.
-a	Represent all files Include hidden files and directories in the listing.
-t	Sort files and directories by their last modification time, displaying the most recently modified ones first.
-r	known as reverse order which is used to reverse the default order of listing.
-S	Sort files and directories by their sizes, listing the largest ones first.
-R	List files and directories recursively, including subdirectories.
-i	known as inode which displays the index number (inode) of each file and directory.
-g	known as group which displays the group ownership of files and directories instead of the owner.
-h	Print file sizes in human-readable format (e.g., 1K, 234M, 2G).
-d	List directories themselves, rather than their contents.

ls
ls -l
ls -la
ll
ls -ltr
ls -ltrh
ls -ltrha
ls -ltrahSR


### cd ###
# go to home path
cd
cd /
cd ..
# go to privious directory
cd -
cd /folder/subfolder
cd ../folder


### mkdir ### 
mkdir touch
mkdir -p first/second/third
# this also gives the verbose option
mkdir -v geeksforgeeks
mkdir directory1 directory2 directory3


### Touch ###
touch file1
touch file1 file2 file3


### cp ###
cp file directory1/
cp file1 file2 file3  directory2/
cp file file5
# recursively copy files on the directory
cp -R directory1/ directory2/



### mv ###
mv file file1
mv file2 directory1/
mv file1 file2 file3 directory/
mv directory3/ directory2/


### RM ###
rm file1
rm -f file5
# interractive remove. This will tell we are removing the empty file or regular file
rm -i file1
# remove all files
rm * 
`# remove files and directory
rm -r directory/
rm -rf directory/


### cat ###
cat file1
cat file1 file2
# cat a file with numbers
cat -n file1
# create new file
cat > file3
# copy data from one file to another
cat file3 > file4


### less ###
less file1
dmesg | less -p "fail"


### more ###
more file1


### view  ###
view file1

### tail ###
tail file1
tail -n 5 file1
# specific no.of bites on the file
tail -c 200 file1
tail file1 file2
ls -t /etc | tail -n 6
ps aux | sort -nk +3 | tail -2  


### Head ###
head file1
head file1 file2
head -n 15 file1
head -15 file1

head -c 20 file1

### Zip/unzip ###
zip myfile.zip file1 file2  
mkdir directoty
cd directoty
touch file1 file2
cd ..
zip -r directory.zip directoty/
unzip file.zip
unzip file.zip -d directoty/


### echo ### 
echo "hello world"
# -e and \b removes all spaces between the text
echo -e "hello \bworld"
# \n uses for break work in multiple lines
echo -e "hello \nworld"
# \t this will do tab option on each and every word
echo -e "welcome \tto \tcloud \tcomputing"
# \v : this option is used to create vertical tab spaces.
echo -e "welcome \vto \vcloud \vcomputing"
# echo *: this command will print all files/folders, similar to ls command.
echo *
# echo > will get the output to a new line
echo "Welcome Cloud Computing" > output.txt
echo "Welcome Cloud Computing" >> output.txt

### grep ###
echo "Hello World!" > file
grep "hello" file
# -i is used to manage the case sensitive information.
grep -i "hello" file
# -c displays the count of the searched words.
grep -c "hello" file
grep -c "Hello" file
echo "Hello World!" >> file
grep -c -i "hello" file
# -l displays the file name that matches the pattern on the current directory
grep -l "file" *
grep -w Hello file
cat file | grep "Hello"
history | grep ls


### pwd ###
pwd
# get the symbolic link pwd
pwd -L


### ssh ### 
ssh username@<ipaddress>
ssh -i <publicKey.pem> username@<ipaddress>

## sftp ###
sftp username@<ipaddress>
put <filename>
# upload multiple files
mput *.txt
mput file file1 file2
bye


### alias ###
alias allfiles=ll
unalias allfiles
alias word="echo hello world"
word 
unalias word
alias startapache="systemctl start apache2"
unalias startapache

### sudo ###
sudo ls
sudo systemctl status apache2


### exit ###
exit

### date ###
date
# set own zone on the server
sudo timedatectl set-timezone America/New_York

### yum/apt ###
apt install apache2
yum install httpd
apt update
yum update


### shutdown ###
shutdown now
shutdown 20:00


### man/help ###
man cat
man mkdir
man ls
passwd -h
passwd --help


### ping ###
ping google.com


### nslookup ###
nslookup google.com


### who ###
who

### whoami ###
whoami

### history ###
history
history 5 
# ! will populate the cached command number to the terminal
!1912
history | grep ls
# remove history
history -d 251
history | tail


### passwd ###
passwd root


### adduser/useradd ###
adduser cloud
useradd azuredevops


### wget ###
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.30/bin/apache-tomcat-10.1.30.tar.gz
# -b used tp download backgrond
wget -b wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz
# overwrite the downloaded value on a file
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.30/bin/apache-tomcat-10.1.30.tar.gz -o filename.gz
# resume partially downloaded file
wget -c http://example.com/samplefile.tar.gz
# try to download file for some no.of times
wget --tries=3 http://example.com/samplefile.tar.gz



### curl ###
curl google.com
curl http://site.{one, two, three}.com


curl -o hello.gz https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.30/bin/apache-tomcat-10.1.30.tar.gz
# –limit-rate: This option limits the upper bound of the rate of data transfer and keeps it around the given value in bytes. 
curl --limit-rate 1000K -O ftp://speedtest.tele2.net/1MB.zip
curl -u demo:password -O ftp://test.rebex.net/readme.txt


### uname ###
uname
uname  -a


### wc ###
wc

### which ###
which cd
ll /usr/bin/python3
which ll
which -v echo


### Whereis ###
whereis python
whereis cd


### find ###
# Find Files Using Name in Current Directory
find . -name file
# Find Files Under Home Directory
find /opt -name file
# Find Files Using Name and Ignoring Case
find /home -iname tecmint.txt
# Find Directories Using Name
find /opt -type d -name test
# Find PHP Files Using Name
find / -type f -name *.php
# Find all PHP Files in the Directory
find . -type f -name "*.php"
# Find Files Based on their Permissions
find . -type f -perm 0777 -print
#  Find Read-Only Files
find / -perm /u=r
# Find Executable Files
find / -perm /a=x
# Find all Empty Files
find /opt -type f -empty
# Find all Empty Directories
find /tmp -type d -empty
# File all Hidden Files
find /tmp -type f -name ".*"
<!-- # Find Last 50 Days Modified Files
find / -mtime 50
# Find Last 50 Days Accessed Files
find / -atime 50 -->
# find all the files which are modified more than 50 days back and less than 100 days.
<!-- find / -mtime +50 –mtime -100 -->
# Find Changed Files in Last 1 Hour
find / -cmin -60
# Find 50MB Files
find / -size 50M
# Find Size between 50MB – 100MB
find / -size +50M -size -100M
# Find and Delete 100MB Files
find / -type f -size +100M -exec rm -f {} \;



### kill ###
# kill a signal
kill -9 <pid>

### df ###
df -h
df -Th

### du ###
du -sh
du -h


### sleep ###
sleep 5
sleep 5s
sleep 0.1m
sleep 1h

### ifconfig ###
ifconfig


### traceroute ###
traceroute google.com