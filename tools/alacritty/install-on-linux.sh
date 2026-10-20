#!/bin/bash

source ../installation-util.sh

install_package alacritty

mkdir -p $HOME/.config/alacritty
cp ./alacritty.toml $HOME/.config/alacritty/
