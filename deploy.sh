#!/bin/bash

# Package dependenies

sudo apt install -y i3 i3blocks compton rofi feh erlang-base fonts-babelstone-modern
sudo apt install -y ./srv/packages/xkb-switch_1.6.0-0_amd64.deb

# Image deploy

cp -r out/.config ~/
cp -r out/.local ~/
cp out/.fehbg ~/

