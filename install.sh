#!/bin/bash
#
# Transfer the dotfiles to ~/ and set some variables
#

br="\n----------\n"

echo "WARNING! This script will overwrite any existing dotfiles."
while true; do
    read -p "Do you wish to continue? [Y/n]: " yn
    case ${yn:-Y} in
        [yYes]* ) break;;
        [nNo]* ) exit;;
        * ) echo "Please answer y(es) or n(o)";;
    esac
done

echo -e $br

rsync --exclude ".git/" --exclude "README.md" --exclude "install.sh" \
      --exclude ".DS_Store" -av --no-perms . ~
rsync -av ./sbtopts /usr/local/etc/sbtopts

echo -e $br

read -p ".gitconfig needs to set user.email: " email
sed -i .bk s/\<EMAIL\>/"$email"/g ~/.gitconfig; rm ~/.gitconfig.bk
read -p ".vimrc needs a name for the phpDoc @author tag: " name
sed -i .bk s/\<AUTHOR\>/"$name"/g ~/.vimrc; rm ~/.vimrc.bk

echo -e "\nAll done!\n"
