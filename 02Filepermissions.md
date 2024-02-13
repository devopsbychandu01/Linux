### permissions ###
# r = read =4
# w = write =2
# x = execution =1
# each and every file has 3 permissions user, group, others

-   rw-     r--     r--

ll
chmod 777 filename
chmod 777 directory
chmod 777 -R directory

chmod +x file1
chmod u+x file1
chmod u-x file1
chmod g+w file1
chmod o-x file1

chmod 600 file
chmod 555 file



### owner ###
chown devops filename
chown devops:devops filename
chown devops:devops directory/
chown -R devops:devops directory/