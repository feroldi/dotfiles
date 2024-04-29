#!/bin/bash

source ../installation-util.sh

install_package xdg-user-dirs

cp user-dirs.dirs $HOME/.config/user-dirs.dirs
