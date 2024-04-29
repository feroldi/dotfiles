#!/bin/bash

source ../installation-util.sh

install_package picom

mkdir -p $HOME/.config/picom
cp picom.conf $HOME/.config/picom
