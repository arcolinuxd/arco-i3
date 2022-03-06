#!/bin/bash
#set -e
###############################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

###############################################################################
echo "Installation of network software"
###############################################################################

list=(
avahi
nss-mdns
gvfs-smb
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 5;echo "################################################################"
echo "Change /etc/nsswitch.conf for access to nas servers"
echo "We assume you are on ArcoLinux and have"
echo "arcolinux-system-config-git or arcolinuxd-system-config-git"
echo "installed. Else check and change the content of this file to your liking"
echo "################################################################"
echo;tput sgr0

# https://wiki.archlinux.org/title/Domain_name_resolution
if [ -f /usr/local/share/arcolinux/nsswitch.conf ]; then
	echo "Make backup and copy ArcoLinux conf over"
	echo
	sudo cp /etc/nsswitch.conf /etc/nsswitch.conf.bak
	sudo cp /usr/local/share/arcolinux/nsswitch.conf /etc/nsswitch.conf
fi

tput setaf 5;echo "################################################################"
echo "Enabling services"
echo "################################################################"
echo;tput sgr0

sudo systemctl enable avahi-daemon.service

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
