#!/bin/bash
#set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

sudo sed -i 's/\[archlinuxfr\]/#\[archlinuxfr\]/g' /etc/pacman.conf
sudo sed -i 's/SigLevel = Never/#SigLevel = Never/g' /etc/pacman.conf
sudo sed -i 's/Server = http:\/\/repo.archlinux.fr\/$arch/#Server = http:\/\/repo.archlinux.fr\/$arch/g' /etc/pacman.conf


echo "################################################################"
echo "###                  archlinuxfr hashtagged out             ####"
echo "################################################################"
