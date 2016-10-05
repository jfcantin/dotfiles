#
# from: http://www.akitaonrails.com/2016/08/03/moving-to-gitlab-yes-it-s-worth-it
# and https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04

# First of all, they come without a swap file. No matter how much RAM you have, the Linux OS is meant to work better by combining a swap file. You can read more about it later, for now just run the following as root:
# 
# fallocate -l 4G /swapfile
# chmod 600 /swapfile
# mkswap /swapfile
# swapon /swapfile
# 
# sysctl vm.swappiness=10
# sysctl vm.vfs_cache_pressure=50
# 
# Edit the /etc/fstab file and add this line:
# 
# /swapfile   none    swap    sw    0   0
# 
# Finally, edit the /etc/sysctl.conf file and add these lines:
# 
# vm.swappiness=10
# vm.vfs_cache_pressure = 50
# 
# Don't forget to set the default locale of your machine. Start by editing the /etc/environment file and adding:
# 
# LC_ALL=en_US.UTF-8
# LANG=en_US.UTF-8
# Then run:
# 
#   sudo locale-gen en_US en_US.UTF-8
#   sudo dpkg-reconfigure locales
# 
# Finally, you should have Ubuntu automatically install stable security patches for you. You don't want to forget machines online without the most current security fixes, so just run this:
# 
# sudo dpkg-reconfigure --priority=low unattended-upgrades
# Choose "yes" and you're done. And of course, for every fresh install, it's always good to run the good old:
# 
# sudo apt-get update && sudo apt-get upgrade