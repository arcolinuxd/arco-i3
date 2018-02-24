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

echo "ArcoLinux Repository"

sudo pacman -S arcolinux-arc-themes-git --noconfirm --needed
#sudo pacman -S arcolinux-common-git --noconfirm --needed
#sudo pacman -S arcolinux-conky-collection-git --noconfirm --needed
#sudo pacman -S arcolinux-docs-git --noconfirm --needed
sudo pacman -S arcolinux-i3wm-git --noconfirm --needed
sudo pacman -S arcolinux-iso-skel-git --noconfirm --needed
#sudo pacman -S arcolinux-oblogout-themes-git --noconfirm --needed
#sudo pacman -S arcolinux-obmenu-generator-git --noconfirm --needed
#sudo pacman -S arcolinux-openbox-configs-git --noconfirm --needed
#sudo pacman -S arcolinux-openbox-themes-git --noconfirm --needed
#sudo pacman -S arcolinux-pipemenus-git --noconfirm --needed
#sudo pacman -S arcolinux-plank-themes-git --noconfirm --needed
sudo pacman -S arcolinux-polybar-git --noconfirm --needed
sudo pacman -S arcolinux-root-git --noconfirm --needed
sudo pacman -S arcolinux-slimlock-themes-git --noconfirm --needed
sudo pacman -S arcolinux-termite-themes-git --noconfirm --needed
#sudo pacman -S arcolinux-tint2-themes-git --noconfirm --needed
sudo pacman -S arcolinux-wallpapers-git --noconfirm --needed
sudo pacman -S arcolinux-xfce-thunar-git --noconfirm --needed

echo "################################################################"
echo "####     Software from ArcoLinux Repository installed       ####"
echo "################################################################"
echo


echo "################################################################"
echo "Copying all files and folders from /etc/skel to ~"
echo "################################################################"
echo
cp -rT /etc/skel ~
echo
echo "################################################################"
echo "removing all folders and files unnecessary for this dekstop from .config"
echo "################################################################"
echo
rm ~/.config/autostart/calamares.desktop
#rm -rf ~/.config/nitrogen
rm -rf ~/.config/tint2
#rm -rf ~/.config/volumeicon
rm ~/.config/compton.conf
echo
echo "################################################################"
echo "removing all folders and files unnecessary for this desktop from .local"
echo "################################################################"
echo
rm -rf ~/.local/share/applications
rm -rf ~/.local/share/xfpanel-switch


