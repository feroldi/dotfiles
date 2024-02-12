#!/bin/bash

source ../installation-util.sh

install_package sxhkd

mkdir -p $HOME/.config/sxhkd
cp ./sxhkdrc $HOME/.config/sxhkd/
