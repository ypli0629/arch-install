#!/bin/bash

yay -S hyprland-git --noconfirm
# yay -S hyprland-nvidia-git --noconfirm
yay -S rofi dunst kitty swaybg swaylock-fancy-git swayidle pamixer wlogout eww-wayland light brillo --noconfirm
yay -S bc blueberry bluez coreutils dbus findutils gawk gnunet jaq light networkmanager network-manager-applet pavucontrol playerctl procps ripgrep socat udev upower util-linux wget wireplumber wlogout eww-wayland pipewire-pulse --noconfirm
yay -S grim swappy slurp rofi-emoji --noconfirm
yay -S qt5-wayland qt6-wayland --noconfirm

sh ./hyprland_conf.sh
