#!/bin/bash

source ../installation-util.sh

install_package sxhkd scrot

mkdir -p $HOME/.config/sxhkd
cp ./sxhkdrc $HOME/.config/sxhkd/
