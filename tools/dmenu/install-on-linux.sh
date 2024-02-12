#!/bin/bash

source ../installation-util.sh

install_package dmenu

mkdir -p $HOME/.local/bin
cp dmenu-launcher.sh $HOME/.local/bin/
