#!/bin/bash

source ../installation-util.sh

install_package polybar ttf-roboto-mono-nerd

mkdir -p $HOME/.config/polybar
cp config.ini $HOME/.config/polybar/
