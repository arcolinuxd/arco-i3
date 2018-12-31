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

echo "Getting the latest arcolinux mirrors file"

sudo pacman -S wget --noconfirm --needed
sudo wget https://raw.githubusercontent.com/arcolinux/arcolinux-mirrorlist/master/arcolinux-mirrorlist -O /etc/pacman.d/arcolinux-mirrorlist


echo '
#[arcolinux_repo_testing]
#SigLevel = Required DatabaseOptional
#Include = /etc/pacman.d/arcolinux-mirrorlist

[arcolinux_repo]
SigLevel = Required DatabaseOptional
Include = /etc/pacman.d/arcolinux-mirrorlist

[arcolinux_repo_3party]
SigLevel = Required DatabaseOptional
Include = /etc/pacman.d/arcolinux-mirrorlist

[arcolinux_repo_submicron]
SigLevel = Required DatabaseOptional
Include = /etc/pacman.d/arcolinux-mirrorlist' | sudo tee --append /etc/pacman.conf

sudo pacman -Syy

echo "Installing the official mirrorlist file now."
echo "It will overwrite the one we downloaded earlier on."

sudo pacman -S arcolinux-mirrorlist-git --noconfirm


echo "################################################################"
echo "###                  arcolinux repo's added                 ####"
echo "################################################################"
