#!/bin/bash

cp -rf ./config/* ~/.config
sudo cp -f ./misc/exec-hyprland /usr/bin/
sudo cp /usr/share/wayland-sessions/hyprland.desktop /usr/share/wayland-sessions/hyprland.desktop.old
sudo cp ./misc/hyprland.desktop /usr/share/wayland-sessions/
