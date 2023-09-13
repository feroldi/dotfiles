#!/bin/bash

source ../installation-util.sh

install_package nvim

mkdir -p $HOME/.config/nvim

cp -r ./settings/* $HOME/.config/nvim/

nvim -E -c PackerSync -c q
