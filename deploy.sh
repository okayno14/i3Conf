#!/bin/bash

OUT='out'

# Package dependenies

while [[ $# -gt 0 ]]; do
    case $1 in
        get_deps)
               echo 'installing deps..'
               sudo apt install -y i3 i3blocks compton rofi feh erlang-base fonts-babelstone-modern playerctl
               sudo apt install -y ./srv/packages/xkb-switch_1.6.0-0_amd64.deb
               echo 'deps installed'
            ;;
    esac
    shift 1
done

# Image deploy

cp -r "${OUT}/.config" ~/
cp -r "${OUT}/.local" ~/
cp "${OUT}/.fehbg" ~/

