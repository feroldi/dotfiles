#!/bin/bash

source ../installation-util.sh

install_package nvim gcc make ripgrep fd

mkdir -p $HOME/.config/nvim

cp -r ./settings/* $HOME/.config/nvim/

git clone --depth 1 https://github.com/wbthomason/packer.nvim $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim -c PackerSync
