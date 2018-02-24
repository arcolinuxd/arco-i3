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


echo "Do not just run this. Examine and judge. Run at own risk."
echo
echo "This script will remove the linux-lts leaving you with the linux package."
echo
echo "Press enter to continue - Press ENTER to continue or CTRL + C to halt"; read dummy;

package="linux-lts"


#----------------------------------------------------------------------------------

#checking if application is already installed and if so uninstall
if pacman -Qi $package &> /dev/null; then

	sudo pacman -R --noconfirm $package

fi

# Just checking if installation was successful
if pacman -Qi $package &> /dev/null; then

echo "################################################################"
echo "#########  "$package" has NOT been uninstalled"
echo "################################################################"

else

echo "################################################################"
echo "#########  "$package" has been uninstalled"
echo "################################################################"

fi

sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "reboot"
