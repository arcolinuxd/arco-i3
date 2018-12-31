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

echo "Autologin system group is installed on ArcoLinux"
echo "On Arch Linux we need to create it ourselves"

sudo groupadd -r autologin

echo "################################################################"
echo "###                  Group has been created                 ####"
echo "###        Now you can run script 800 to autologin          ####"
echo "################################################################"
