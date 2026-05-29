#!/bin/bash

source ../installation-util.sh

install_package gnome-terminal

dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ./gnome_term_all_settings.txt
