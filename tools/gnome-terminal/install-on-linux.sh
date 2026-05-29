#!/bin/bash

source ../installation-util.sh

install_package gnome-terminal

dconf load /org/gnome/terminal/ < ./gnome_term_all_settings.txt
