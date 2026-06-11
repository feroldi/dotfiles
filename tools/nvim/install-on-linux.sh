#!/bin/bash

source ../installation-util.sh

install_package nvim gcc make ripgrep fd

mkdir -p $HOME/.config/nvim

rm -r $HOME/.config/nvim/*
cp -r ./settings/* $HOME/.config/nvim/
