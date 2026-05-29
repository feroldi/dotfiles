#!/bin/bash

source ../installation-util.sh

install_package xorg xorg-xinit hsetroot

cp ./xinitrc $HOME/.xinitrc

mkdir -p $HOME/media/wallpapers
cp epe.png $HOME/media/wallpapers/
