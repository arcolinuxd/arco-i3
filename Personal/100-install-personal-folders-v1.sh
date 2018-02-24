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

echo "Creating all folders"
echo "Creates only folders if they do not exist"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
[ -d $HOME"/.config/Thunar" ] || mkdir -p $HOME"/.config/Thunar"
[ -d $HOME"/.config/xfce4" ] || mkdir -p $HOME"/.config/xfce4"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
#[ -d $HOME"/Dropbox" ] || mkdir -p $HOME"/Dropbox" will be created by dropbox
[ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync"
[ -d $HOME"/Music" ] || mkdir -p $HOME"/Music"
[ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures"
[ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.gimp-2.8" ] || mkdir -p $HOME"/.gimp-2.8"
[ -d $HOME"/.gimp-2.8/scripts" ] || mkdir -p $HOME"/.gimp-2.8/scripts"
[ -d $HOME"/.gimp-2.8/themes" ] || mkdir -p $HOME"/.gimp-2.8/themes"



echo "################################################################"
echo "###       personal folders created or existed already       ####"
echo "################################################################"
