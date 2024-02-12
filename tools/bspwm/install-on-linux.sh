#!/bin/bash

source ../installation-util.sh

install_package bspwm

mkdir -p $HOME/.config/bspwm
cp ./bspwmrc $HOME/.config/bspwm/
