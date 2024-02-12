#!/bin/bash

source ../installation-util.sh

install_package bash zoxide

cp bashrc $HOME/.bashrc
cp bash_aliases $HOME/.bash_aliases
cp bash_profile $HOME/.bash_profile
