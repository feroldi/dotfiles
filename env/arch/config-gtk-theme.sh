#!/bin/sh

source ../installation-util.sh

install_package gnome-themes-extra fakeroot debugedit

printf '%s\n' "./aur" > .gitignore
mkdir -p ./aur

(
    cd ./aur
    git clone https://aur.archlinux.org/packages/adwaita-qt6-git
    cd ./adwaita-qt6-git
    makepkg -si
)

if [ ! grep -q GTK_THEME /etc/environment ]; then
    printf '\n%s\n' 'GTK_THEME=Adwaita:dark' >> /etc/environment
fi
