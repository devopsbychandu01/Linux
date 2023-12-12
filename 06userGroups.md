# createUser:
adduser azure
# check the user entries
cat /etc/passwd
# delete user
deluser azure
# user password change
passwd azure
# change the home directory of a user 
usermod -d /home/myhome azure
# lock a user 
usermod -L test_user
# unlock a user
usermod -U test_user


## when ever a user created by default a also will create with same name of user.
groups azure
# create new group
groupadd azuredevops1
# if you want to updated created group to a existing user
usermod -a -G azuredevops1 azure

