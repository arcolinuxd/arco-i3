#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website : https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "THIS SCRIPT WILL ASK YOUR LOGINNAME "
echo "AND WILL USE IT TO ADD YOU TO THE AUTOLOGIN GROUP "
echo "https://wiki.archlinux.org/index.php/LightDM#Enabling_autologin"

##Change your username here
read -p "What is your login? It will be used to add this user to the group autologin : " choice
sudo gpasswd -a $choice autologin

sudo sed -i 's/'#autologin-user='/'autologin-user=$choice'/g' /etc/lightdm/lightdm.conf
sudo sed -i 's/'#autologin-session='/'autologin-session=i3'/g' /etc/lightdm/lightdm.conf

echo "################################################################"
echo "####        You can now autologin - reboot to check       ######"
echo "################################################################"
