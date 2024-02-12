#!/bin/bash

source ../installation-util.sh

install_package xorg xorg-xinit hsetroot

cp ./xinitrc $HOME/.xinitrc
