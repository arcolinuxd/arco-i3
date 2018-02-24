#!/bin/bash
##################################################################################################################
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

mv 600-software-from-ArchMerge-repo-v1.sh  600-software-from-ArcoLinux-repo-v1.sh

#find .  -type f -exec sed -i  	's/archmerge/arcolinux/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.archmerge.info/https:\/\/www.arcolinux.info/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/archmerge.info/https:\/\/arcolinux.info/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.archmerge.com/https:\/\/www.arcolinux.com/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/archmerge.com/https:\/\/arcolinux.com/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/archmerged.com/https:\/\/arcolinuxd.com/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.archmerged.com/https:\/\/www.arcolinuxd.com/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.archmergeforum.com/https:\/\/www.arcolinuxforum.com/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/archmergeforum.com/https:\/\/arcolinuxforum.com/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/Website 	: 	https:\/\/www.erikdubois.be/Website : https:\/\/www.erikdubois.be/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/#Author  :   Erik Dubois/#Author  : Erik Dubois/g' {} \;
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/ArchMerge iso (Xfce, Openbox and i3)/ArcoLinux iso (Xfce, Openbox and i3)/g' {} \;


#packages
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/archmerge-/arcolinux-/g' {} \;

#Repository

find .  ! -name am-to-al.sh -type f -exec sed -i  	's/ArchMerge Repository/ArcoLinux Repository/g' {} \;

find .  ! -name am-to-al.sh -name "README.md" -type f -exec sed -i  	's/ArchMergeD/ArcoLinuxD/g' {} \;


#soc Media

#Facebook : https://www.facebook.com/arcolinuxd/
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.facebook.com\/archmergelinux\//https:\/\/www.facebook.com\/arcolinuxd\//g' {} \;
# Facebook : https://www.facebook.com/groups/arcolinux/
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.facebook.com\/groups\/archmerge\//https:\/\/www.facebook.com\/groups\/arcolinux\//g' {} \;
# Google + : https://plus.google.com/u/0/communities/104398992023863502986
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/plus.google.com\/u\/0\/communities\/109343992040963164975/https:\/\/plus.google.com\/u\/0\/communities\/104398992023863502986/g' {} \;
# Flickr   : https://www.flickr.com/photos/arcolinux/
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.flickr.com\/photos\/archmerge\//https:\/\/www.flickr.com\/photos\/arcolinux\//g' {} \;
# Twitter  : https://twitter.com/arcolinux
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/twitter.com\/ArchMerge/https:\/\/twitter.com\/arcolinux/g' {} \;
# Instagram: https://www.instagram.com/arcolinux/
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.instagram.com\/archmerge\//https:\/\/www.instagram.com\/arcolinux\//g' {} \;
# Linked in: https://www.linkedin.com/in/arcolinux
find .  ! -name am-to-al.sh -type f -exec sed -i  	's/https:\/\/www.linkedin.com\/in\/archmerge\//https:\/\/www.linkedin.com\/in\/arcolinux/g' {} \;
# Youtube  : https://www.youtube.com/erikdubois
