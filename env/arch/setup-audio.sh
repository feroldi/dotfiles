#!/bin/bash

sudo pacman -S pulseaudio pulseaudio-alsa pavucontrol

systemctl --user enable pulseaudio
systemctl --user start pulseaudio
