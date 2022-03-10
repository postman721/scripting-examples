#/bin/bash

# Run this script as sudo su / root user.
# Make executable with: chmod +x steps.sh 
# Execute with: sudo ./steps.sh 

# Create user: test.
useradd test

# Add test user to sudo group.
usermod -aG sudo test

# Make default password to user: test.
echo 'test:pass123' | chpasswd

# Make test user change the default password, we set.
passwd --expire test

# To lock account 
#sudo passwd -l test

# To delete account
#userdel test


######################
# An example 
######################
# Login and what you should see during the very first time.

# su test
# Password: 
# You are required to change your password immediately (administrator enforced).
# Changing password for test.
# Current password: 
# New password: 
# Retype new password: 
