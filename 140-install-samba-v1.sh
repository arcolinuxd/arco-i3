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


sudo pacman -S --noconfirm --needed samba
sudo wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /etc/samba/smb.conf
sudo systemctl enable smbd.service
sudo systemctl start smbd.service
sudo systemctl enable nmbd.service
sudo systemctl start nmbd.service

##Change your username here
read -p "What is your login? It will be used to add this user to smb : " choice
sudo smbpasswd -a $choice

#access samba share windows
sudo pacman -S --noconfirm --needed gvfs-smb


# sudo systemctl restart ... if you run into trouble
# testparm will check the conf file for errors

# red hat samba sharing config

# echo "################################################################"
# echo "system-config-samba"
# echo "################################################################"
#
#
# package="system-config-samba"
#
# #----------------------------------------------------------------------------------
#
# #checking if application is already installed or else install with aur helpers
# if pacman -Qi $package &> /dev/null; then
#
# 	echo "################################################################"
# 	echo "################## "$package" is already installed"
# 	echo "################################################################"
#
# else
#
# 	#checking which helper is installed
# 	if pacman -Qi packer &> /dev/null; then
#
# 		echo "Installing with packer"
# 		packer -S --noconfirm --noedit  $package
#
# 	elif pacman -Qi pacaur &> /dev/null; then
#
# 		echo "Installing with pacaur"
# 		pacaur -S --noconfirm --noedit  $package
#
# 	elif pacman -Qi yaourt &> /dev/null; then
#
# 		echo "Installing with yaourt"
# 		yaourt -S --noconfirm $package
#
# 	fi
#
# 	# Just checking if installation was successful
# 	if pacman -Qi $package &> /dev/null; then
#
# 	echo "################################################################"
# 	echo "#########  "$package" has been installed"
# 	echo "################################################################"
#
# 	else
#
# 	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
# 	echo "!!!!!!!!!  "$package" has NOT been installed"
# 	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
#
#
# 	fi
#
# fi
#
#
#
#
#
# echo "Run system-config-samba to set up shares"
# echo "You will be able to connect to this computer with the login and password you created"
# echo "You will need to edit /etc/samba/smb.conf"
# echo "Scroll down to bottom"
# echo "Example code is in there"
# echo "Create a folder with name 'SHARED' in your homefolder."
# echo "Make sure you delete all the ; in those lines."
# echo "Reboot and enjoy"

echo "################################################################"
echo "#########   samba  software installed           ################"
echo "################################################################"
