#!/bin/bash
set -e
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

echo '

#[arcolinux_repo_testing]
#SigLevel = Required DatabaseOptional
#Server = https://arcolinux.github.io/arcolinux_repo_testing/$arch

[arcolinux_repo]
SigLevel = Required DatabaseOptional
Server = https://arcolinux.github.io/arcolinux_repo/$arch

[arcolinux_repo_3party]
SigLevel = Required DatabaseOptional
Server = https://arcolinux.github.io/arcolinux_repo_3party/$arch' | sudo tee --append /etc/pacman.conf

echo "################################################################"
echo "###                  arcolinux repo added                   ####"
echo "################################################################"
