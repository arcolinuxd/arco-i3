#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "This script will ask your login name "
echo "It will be used to add you to the group autologin "
#echo "https://wiki.archlinux.org/index.php/LightDM#Enabling_autologin"

#checking if group autologin exists for Arch Linux
function grpexists {
if [ $(getent group $1) ]; then
  echo "Check : Group $1 exists"
else
  echo "Group $1 does not exist. Go to ArchWay folder"
  echo "Run the script to create the group autologin and"
  echo "rerun this script afterwards."
  exit 1
fi
}
grpexists autologin

##Change your username here
read -p "What is your login?
It will be used to add this user to the group autologin : " choice
sudo gpasswd -a $choice autologin

sudo sed -i 's/'#autologin-user='/'autologin-user=$choice'/g' /etc/lightdm/lightdm.conf
sudo sed -i 's/'#autologin-session='/'autologin-session=i3'/g' /etc/lightdm/lightdm.conf

echo "################################################################"
echo "####        You can now autologin - reboot to check       ######"
echo "################################################################"
